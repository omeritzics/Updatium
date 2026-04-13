import 'dart:async';

import 'package:animations/animations.dart';
import 'package:app_links/app_links.dart';
import 'package:simple_localization/simple_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:updatium/main.dart';
import 'package:updatium/pages/add_app.dart';
import 'package:updatium/pages/apps.dart';
import 'package:updatium/pages/import_export.dart';
import 'package:updatium/pages/security_disclaimer.dart';
import 'package:updatium/pages/settings.dart';
import 'package:updatium/providers/apps_provider.dart';
import 'package:updatium/providers/settings_provider.dart';
import 'package:updatium/providers/source_provider.dart';
import 'package:provider/provider.dart';

// Material 3 spacing tokens
const gap8 = SizedBox(height: 8);
const gap12 = SizedBox(height: 12);
const gap16 = SizedBox(height: 16);
const gap24 = SizedBox(height: 24);
const gap32 = SizedBox(height: 32);

const horizontalGap8 = SizedBox(width: 8);
const horizontalGap12 = SizedBox(width: 12);
const horizontalGap16 = SizedBox(width: 16);
const horizontalGap24 = SizedBox(width: 24);

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class NavigationPageItem {
  late String title;
  late IconData icon;
  late Widget widget;

  NavigationPageItem(this.title, this.icon, this.widget);
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  List<int> selectedIndexHistory = [];
  bool isReversing = false;
  int prevAppCount = -1;
  bool prevIsLoading = true;
  late AppLinks _appLinks;
  StreamSubscription<Uri>? _linkSubscription;
  bool isLinkActivity = false;
  late List<AnimationController> _iconControllers;
  late List<Animation<double>> _iconAnimations;
  bool _iconsInitialized = false;
  final GlobalKey<AppsPageState> _appsPageKey = GlobalKey<AppsPageState>();
  final GlobalKey<AddAppPageState> _addAppPageKey =
      GlobalKey<AddAppPageState>();

  List<NavigationPageItem> getPages(SettingsProvider settingsProvider) {
    return [
      NavigationPageItem(
        tr('appsString'),
        Icons.apps,
        AppsPage(key: _appsPageKey),
      ),
      NavigationPageItem(
        settingsProvider.safeMode ? tr('importExport') : tr('addApp'),
        settingsProvider.safeMode ? Icons.import_export : Icons.add_circle,
        settingsProvider.safeMode
            ? const ImportExportPage()
            : AddAppPage(key: _addAppPageKey),
      ),
      NavigationPageItem(tr('settings'), Icons.settings, const SettingsPage()),
    ];
  }

  @override
  void initState() {
    super.initState();
    initDeepLinks();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      // Check if security disclaimer has been accepted
      final disclaimerAccepted =
          await SecurityDisclaimerScreen.isDisclaimerAccepted();
      if (!disclaimerAccepted) {
        final accepted = await Navigator.of(context).push<bool>(
          MaterialPageRoute(
            builder: (context) => const SecurityDisclaimerScreen(),
          ),
        );

        // If user declined, exit the app
        if (accepted != true) {
          SystemNavigator.pop();
          return;
        }
      }
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    if (!_iconsInitialized) {
      final settingsProvider = context.read<SettingsProvider>();
      final pagesList = getPages(settingsProvider);
      _iconControllers = List.generate(
        pagesList.length,
        (index) => AnimationController(
          duration: const Duration(milliseconds: 600),
          vsync: this,
        ),
      );

      _iconAnimations = _iconControllers
          .map(
            (controller) => Tween<double>(begin: 0, end: 1).animate(
              CurvedAnimation(parent: controller, curve: Curves.easeInOut),
            ),
          )
          .toList();

      _iconsInitialized = true;
      setState(() {}); // Rebuild after initialization
    }
  }

  Future<void> initDeepLinks() async {
    _appLinks = AppLinks();

    goToAddApp(String data) async {
      final settingsProvider = context.read<SettingsProvider>();
      if (settingsProvider.safeMode) {
        showError(UpdatiumError(tr('safeModeAddAppDisabled')), context);
        return;
      }
      switchToPage(1);
      final pages = getPages(settingsProvider);
      while ((pages[1].widget.key as GlobalKey<AddAppPageState>?)
              ?.currentState ==
          null) {
        await Future.delayed(const Duration(microseconds: 1));
      }
      (pages[1].widget.key as GlobalKey<AddAppPageState>?)?.currentState
          ?.linkFn(data);
    }

    goToExistingApp(String appId) async {
      // Go to Apps page
      switchToPage(0);
      final settingsProvider = context.read<SettingsProvider>();
      final pages = getPages(settingsProvider);
      while ((pages[0].widget.key as GlobalKey<AppsPageState>?)?.currentState ==
          null) {
        await Future.delayed(const Duration(microseconds: 1));
      }

      // Navigate to the app
      (pages[0].widget.key as GlobalKey<AppsPageState>?)?.currentState
          ?.openAppById(appId);
    }

    interpretLink(Uri uri) async {
      isLinkActivity = true;
      var action = uri.host;
      var data = uri.path.length > 1 ? uri.path.substring(1) : "";
      try {
        if (action == 'add') {
          // Ensure apps are loaded
          AppsProvider appsProvider = context.read<AppsProvider>();
          while (appsProvider.loadingApps) {
            await Future.delayed(const Duration(milliseconds: 10));
          }

          // See if we already have this app
          String standardizedUrl = SourceProvider()
              .getSource(data)
              .standardizeUrl(data);

          AppInMemory? existingApp = appsProvider.apps.values
              .where((AppInMemory a) => a.app.url == standardizedUrl)
              .firstOrNull;

          if (existingApp != null) {
            await goToExistingApp(existingApp.app.id);
          } else {
            await goToAddApp(data);
          }
        } else if (action == 'app' || action == 'apps') {
          var dataStr = Uri.decodeComponent(data);
          if (await showDialog(
                context: context,
                builder: (BuildContext ctx) {
                  return _ImportDialog(action: action, dataStr: dataStr);
                },
              ) ==
              true) {
            // ignore: use_build_context_synchronously
            var appsProvider = context.read<AppsProvider>();
            var result = await appsProvider.import(
              action == 'app'
                  ? '{ "apps": [$dataStr] }'
                  : '{ "apps": $dataStr }',
            );
            // ignore: use_build_context_synchronously
            showMessage(
              tr(
                'importedX',
                args: [plural('apps', result.key.length).toLowerCase()],
              ),
              context,
            );
          }
        } else {
          throw UpdatiumError(tr('unknown'));
        }
      } catch (e) {
        showError(e, context);
      }
    }

    // Check initial link if app was in cold state (terminated)
    final appLink = await _appLinks.getInitialLink();
    var initLinked = false;
    if (appLink != null) {
      await interpretLink(appLink);
      initLinked = true;
    }
    // Handle link when app is in warm state (front or background)
    _linkSubscription = _appLinks.uriLinkStream.listen((uri) async {
      if (!initLinked) {
        await interpretLink(uri);
      } else {
        initLinked = false;
      }
    });
  }

  void setIsReversing(int targetIndex) {
    bool reversing =
        selectedIndexHistory.isNotEmpty &&
        selectedIndexHistory.last > targetIndex;
    setState(() {
      isReversing = reversing;
    });
  }

  Future<void> switchToPage(int index) async {
    setIsReversing(index);
    final settingsProvider = context.read<SettingsProvider>();
    final pages = getPages(settingsProvider);
    if (index == 0) {
      while ((pages[0].widget.key as GlobalKey<AppsPageState>).currentState !=
          null) {
        // Avoid duplicate GlobalKey error
        await Future.delayed(const Duration(microseconds: 1));
      }
      setState(() {
        selectedIndexHistory.clear();
      });
    } else if (selectedIndexHistory.isEmpty ||
        (selectedIndexHistory.isNotEmpty &&
            selectedIndexHistory.last != index)) {
      setState(() {
        int existingInd = selectedIndexHistory.indexOf(index);
        if (existingInd >= 0) {
          selectedIndexHistory.removeAt(existingInd);
        }
        selectedIndexHistory.add(index);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    AppsProvider appsProvider = context.watch<AppsProvider>();
    SettingsProvider settingsProvider = context.watch<SettingsProvider>();

    final pages = getPages(settingsProvider);

    if (!prevIsLoading &&
        prevAppCount >= 0 &&
        appsProvider.apps.length > prevAppCount &&
        selectedIndexHistory.isNotEmpty &&
        selectedIndexHistory.last == 1 &&
        !isLinkActivity) {
      switchToPage(0);
    }
    prevAppCount = appsProvider.apps.length;
    prevIsLoading = appsProvider.loadingApps;

    return WillPopScope(
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        body: PageTransitionSwitcher(
          duration: Duration(
            milliseconds: settingsProvider.disablePageTransitions ? 0 : 300,
          ),
          reverse: settingsProvider.reversePageTransitions
              ? !isReversing
              : isReversing,
          transitionBuilder:
              (
                Widget child,
                Animation<double> animation,
                Animation<double> secondaryAnimation,
              ) {
                return SharedAxisTransition(
                  animation: animation,
                  secondaryAnimation: secondaryAnimation,
                  transitionType: SharedAxisTransitionType.horizontal,
                  child: child,
                );
              },
          child: pages
              .elementAt(
                selectedIndexHistory.isEmpty ? 0 : selectedIndexHistory.last,
              )
              .widget,
        ),
        bottomNavigationBar: Semantics(
          label: 'Main navigation',
          hint:
              'Navigate between apps, ${settingsProvider.safeMode ? "import/export" : "add app"}, and settings',
          child: NavigationBar(
            selectedIndex: selectedIndexHistory.isEmpty
                ? 0
                : selectedIndexHistory.last,
            animationDuration: const Duration(milliseconds: 300),
            labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
            onDestinationSelected: (int index) async {
              HapticFeedback.selectionClick();

              // Trigger full-rotation animation
              if (_iconsInitialized && index < _iconControllers.length) {
                _iconControllers[index].forward().then((_) {
                  _iconControllers[index].reset();
                });
              }

              switchToPage(index);
            },
            destinations: pages.asMap().entries.map((entry) {
              int index = entry.key;
              var page = entry.value;
              return NavigationDestination(
                icon: _iconsInitialized && index < _iconAnimations.length
                    ? AnimatedBuilder(
                        animation: _iconAnimations[index],
                        builder: (context, child) {
                          return Transform.rotate(
                            angle: _iconAnimations[index].value * 2 * 3.14159,
                            child: Icon(page.icon),
                          );
                        },
                      )
                    : Icon(page.icon),
                label: page.title,
              );
            }).toList(),
          ),
        ),
      ),
      onWillPop: () async {
        if (isLinkActivity &&
            selectedIndexHistory.length == 1 &&
            selectedIndexHistory.last == 1) {
          return true;
        }
        setIsReversing(
          selectedIndexHistory.length >= 2
              ? selectedIndexHistory.reversed.toList()[1]
              : 0,
        );
        if (selectedIndexHistory.isNotEmpty) {
          setState(() {
            selectedIndexHistory.removeLast();
          });
          return false;
        }
        final settingsProvider = context.read<SettingsProvider>();
        final pages = getPages(settingsProvider);
        return !((pages[0].widget.key as GlobalKey<AppsPageState>).currentState
                ?.clearSelected() ??
            false);
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    _linkSubscription?.cancel();
    for (var controller in _iconControllers) {
      controller.dispose();
    }
  }
}

class _ImportDialog extends StatefulWidget {
  final String action;
  final String dataStr;

  const _ImportDialog({required this.action, required this.dataStr});

  @override
  State<_ImportDialog> createState() => _ImportDialogState();
}

class _ImportDialogState extends State<_ImportDialog> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        tr(
          'importX',
          args: [
            (widget.action == 'app' ? tr('app') : tr('appsString'))
                .toLowerCase(),
          ],
        ),
      ),
      content: SizedBox(
        width: double.maxFinite,
        child: ExpansionPanelList(
          expansionCallback: (int index, bool isExpanded) {
            setState(() {
              _isExpanded = isExpanded;
            });
          },
          children: [
            ExpansionPanel(
              headerBuilder: (BuildContext context, bool isExpanded) {
                return ListTile(
                  leading: const Icon(Icons.info_outlined),
                  title: const Text('Raw JSON'),
                );
              },
              body: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  widget.dataStr,
                  style: const TextStyle(fontFamily: 'monospace'),
                ),
              ),
              isExpanded: _isExpanded,
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(null),
          child: Text(tr('cancel')),
        ),
        TextButton(
          onPressed: () => Navigator.of(context).pop(true),
          child: Text(tr('ok')),
        ),
      ],
    );
  }
}
