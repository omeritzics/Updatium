// Exposes functions that can be used to send notifications to the user.
//
// Contains a set of pre-defined UpdatiumNotification objects that should be used throughout the app.

import 'dart:isolate';
import 'dart:ui';

import 'package:updatium/services/slang_converter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:android_intent_plus/android_intent.dart';
import 'package:android_intent_plus/flag.dart';

import 'package:updatium/main.dart';
import 'package:updatium/providers/apps_provider.dart' show formatDownloadSize;
import 'package:updatium/providers/settings_provider.dart';
import 'package:updatium/providers/source_provider.dart';

/// Prefix for the download-notification Cancel action id; the app ID is appended
/// so the tap handler knows which download to stop.
const String cancelDownloadActionPrefix = 'cancel_download::';

const int updateNotificationId = 2;
const int silentUpdateNotificationId = 3;
const int errorCheckingUpdatesNotificationId = 5;
const int trackOnlyUpdateNotificationId = 7;
const int silentUpdateAttemptNotificationId = 8;
const int downloadNotificationBaseId = 100;

/// Size of the ID space for per-download notifications. Kept just under the
/// 32-bit signed max (minus [downloadNotificationBaseId]) so download IDs stay
/// positive and clear of the small fixed IDs above, while making collisions
/// between concurrently downloading apps as unlikely as a raw hashCode.
const int downloadNotificationIdRange = 2000000000;

/// Name under which the main isolate registers a port to receive download-cancel
/// requests forwarded from the notification-action background isolate.
const String _downloadCancelPortName = 'updatium_download_cancel';

/// The app ID targeted by a download-cancel notification action, or null if
/// [actionId] isn't a download-cancel action.
String? _cancelActionAppId(String? actionId) {
  if (actionId == null || !actionId.startsWith(cancelDownloadActionPrefix)) {
    return null;
  }
  final appId = actionId.substring(cancelDownloadActionPrefix.length);
  return appId.isEmpty ? null : appId;
}

/// Runs in a separate isolate when a notification action button is tapped (FLN
/// routes action taps here, not to the foreground handler). It can't touch app
/// state, so it forwards the cancel request to the main isolate via a named port.
@pragma('vm:entry-point')
void notificationTapBackground(NotificationResponse response) {
  final appId = _cancelActionAppId(response.actionId);
  if (appId != null) {
    IsolateNameServer.lookupPortByName(_downloadCancelPortName)?.send(appId);
  }
}

String _buildUpdateMessage(
  List<App> updates, {
  String? emptyKey,
  required String singleKey,
  required String pluralKey,
  bool includeVersion = false,
}) {
  if (updates.isEmpty) return emptyKey != null ? tr(emptyKey) : '';
  final name = updates[0].finalName;
  final version = updates[0].latestVersion;
  if (updates.length == 1) {
    final args = includeVersion ? [name, version] : [name];
    return tr(singleKey, args: args);
  }
  final count = updates.length - 1;
  return plural(pluralKey, count, args: [name, count.toString()]);
}

class UpdatiumNotification {
  late int id;
  late String title;
  late String message;
  late String channelCode;
  late String channelName;
  late String channelDescription;
  Importance importance;
  int? progPercent;
  bool onlyAlertOnce;
  String? payload;
  List<AndroidNotificationAction>? androidActions;

  UpdatiumNotification(
    this.id,
    this.title,
    this.message,
    this.channelCode,
    this.channelName,
    this.channelDescription,
    this.importance, {
    this.onlyAlertOnce = false,
    this.progPercent,
    this.payload,
    this.androidActions,
  });
}

class UpdateNotification extends UpdatiumNotification {
  UpdateNotification(List<App> updates, {int? id})
    : super(
        id ?? updateNotificationId,
        t('updatesAvailable'),
        _buildUpdateMessage(
          updates,
          emptyKey: 'noNewUpdates',
          singleKey: 'xHasAnUpdate',
          pluralKey: 'xAndNMoreUpdatesAvailable',
        ),
        'UPDATES_AVAILABLE',
        'updatesAvailableNotifChannel'.t(),
        'updatesAvailableNotifDescription'.t(),
        Importance.max,
      );
}

class TrackOnlyUpdateNotification extends UpdatiumNotification {
  TrackOnlyUpdateNotification(List<App> updates, {int? id})
    : super(
        id ?? trackOnlyUpdateNotificationId,
        t('trackOnlyUpdatesAvailable'),
        _buildUpdateMessage(
          updates,
          emptyKey: 'noNewUpdates',
          singleKey: 'xHasAnUpdate',
          pluralKey: 'xAndNMoreUpdatesAvailable',
        ),
        'UPDATES_AVAILABLE',
        t('updatesAvailableNotifChannel'),
        t('updatesAvailableNotifDescription'),
        Importance.max,
      );
}

class SilentUpdateNotification extends UpdatiumNotification {
  SilentUpdateNotification(List<App> updates, bool succeeded, {int? id})
    : super(
        id ?? 3,
        succeeded ? t('appsUpdated') : t('appsNotUpdated'),
        _buildUpdateMessage(
          updates,
          singleKey: succeeded ? 'xWasUpdatedToY' : 'xWasNotUpdatedToY',
          pluralKey: succeeded
              ? 'xAndNMoreUpdatesInstalled'
              : 'xAndNMoreUpdatesFailed',
          includeVersion: true,
        ),
        'APPS_UPDATED',
        'appsUpdatedNotifChannel'.t(),
        'appsUpdatedNotifDescription'.t(),
        Importance.defaultImportance,
      );
}

class SilentUpdateAttemptNotification extends UpdatiumNotification {
  SilentUpdateAttemptNotification(List<App> updates, {int? id})
    : super(
        id ?? 8,
        t('appsPossiblyUpdated'),
        _buildUpdateMessage(
          updates,
          singleKey: 'xWasPossiblyUpdatedToY',
          pluralKey: 'xAndNMoreUpdatesPossiblyInstalled',
          includeVersion: true,
        ),
        'APPS_POSSIBLY_UPDATED',
        'appsPossiblyUpdatedNotifChannel'.t(),
        'appsPossiblyUpdatedNotifDescription'.t(),
        Importance.defaultImportance,
      );
}

class ErrorCheckingUpdatesNotification extends UpdatiumNotification {
  ErrorCheckingUpdatesNotification(String error, {int? id})
    : super(
        id ?? 5,
        'errorCheckingUpdates'.t(),
        error,
        'BG_UPDATE_CHECK_ERROR',
        'errorCheckingUpdatesNotifChannel'.t(),
        'errorCheckingUpdatesNotifDescription'.t(),
        Importance.high,
        payload: "${'errorCheckingUpdates'.t()}\n$error",
      );
}

class AppsRemovedNotification extends UpdatiumNotification {
  AppsRemovedNotification(List<List<String>> namedReasons)
    : super(
        6,
        'appsRemoved'.t(),
        '',
        'APPS_REMOVED',
        'appsRemovedNotifChannel'.t(),
        'appsRemovedNotifDescription'.t(),
        Importance.max,
      ) {
    final buffer = StringBuffer();
    for (var r in namedReasons) {
      buffer.writeln(t('xWasRemovedDueToErrorY', args: [r[0], r[1]]));
    }
    message = buffer.toString().trim();
  }
}

class DownloadNotification extends UpdatiumNotification {
  static const int _baseId = downloadNotificationBaseId;
  DownloadNotification(
    String appName,
    int progPercent, {
    String? appId,
    int? receivedBytes,
    int? totalBytes,
  }) : super(
         _baseId + (appName.hashCode.abs() % downloadNotificationIdRange),
         t('downloadingX', args: [appName]),
         formatDownloadSize(receivedBytes, totalBytes) ?? '',
         'APP_DOWNLOADING',
         t('downloadingXNotifChannel', args: [t('app')]),
         t('downloadNotifDescription'),
         Importance.low,
         onlyAlertOnce: true,
         progPercent: progPercent,
         androidActions: appId != null
             ? [
                 AndroidNotificationAction(
                   '$cancelDownloadActionPrefix$appId',
                   t('cancel'),
                   showsUserInterface: false,
                   cancelNotification: true,
                 ),
               ]
             : null,
       );
}

class DownloadedNotification extends UpdatiumNotification {
  DownloadedNotification(String fileName, String downloadUrl, String filePath)
    : super(
        downloadUrl.hashCode.abs(),
        t('downloadedX', args: [fileName]),
        '',
        'FILE_DOWNLOADED',
        t('downloadedXNotifChannel', args: ['app'.t()]),
        t('downloadedX', args: ['app'.t()]),
        Importance.defaultImportance,
        payload: 'FILE_DOWNLOADED:$filePath',
      );
}

UpdatiumNotification get completeInstallationNotification =>
    UpdatiumNotification(
      1,
      t('completeAppInstallation'),
      t('updatiumMustBeOpenToInstallApps'),
      'COMPLETE_INSTALL',
      t('completeAppInstallationNotifChannel'),
      t('completeAppInstallationNotifDescription'),
      Importance.max,
    );

class CheckingUpdatesNotification extends UpdatiumNotification {
  CheckingUpdatesNotification(String appName)
    : super(
        4,
        'checkingForUpdates'.t(),
        appName,
        'BG_UPDATE_CHECK',
        'checkingForUpdatesNotifChannel'.t(),
        'checkingForUpdatesNotifDescription'.t(),
        Importance.min,
      );
}

class NotificationsProvider {
  FlutterLocalNotificationsPlugin notifications =
      FlutterLocalNotificationsPlugin();

  bool isInitialized = false;

  /// Invoked when the user taps a download notification's Cancel action.
  static void Function(String appId)? onDownloadCancelRequested;

  Map<Importance, Priority> importanceToPriority = {
    Importance.defaultImportance: Priority.defaultPriority,
    Importance.high: Priority.high,
    Importance.low: Priority.low,
    Importance.max: Priority.max,
    Importance.min: Priority.min,
    Importance.none: Priority.min,
    Importance.unspecified: Priority.defaultPriority,
  };

  Future<void> initialize() async {
    if (isInitialized) return;
    isInitialized =
        await notifications.initialize(
          settings: const InitializationSettings(
            android: AndroidInitializationSettings('ic_notification'),
          ),
          onDidReceiveNotificationResponse: (NotificationResponse response) {
            final cancelAppId = _cancelActionAppId(response.actionId);
            if (cancelAppId != null) {
              onDownloadCancelRequested?.call(cancelAppId);
              return;
            }
            _showNotificationPayload(response.payload);
          },
          onDidReceiveBackgroundNotificationResponse: notificationTapBackground,
        ) ??
        false;
  }

  /// Called from the main isolate so that download-cancel requests forwarded by
  /// [notificationTapBackground] are received and dispatched to
  /// [onDownloadCancelRequested].
  static void listenForDownloadCancelFromMain() {
    final prevPort = IsolateNameServer.lookupPortByName(
      _downloadCancelPortName,
    );
    if (prevPort != null) {
      IsolateNameServer.removePortNameMapping(_downloadCancelPortName);
    }
    final port = ReceivePort();
    IsolateNameServer.registerPortWithName(
      port.sendPort,
      _downloadCancelPortName,
    );
    port.listen((message) {
      if (message is String && message.isNotEmpty) {
        onDownloadCancelRequested?.call(message);
      }
    });
  }

  Future<void> checkLaunchByNotif() async {
    final NotificationAppLaunchDetails? launchDetails = await notifications
        .getNotificationAppLaunchDetails();
    if (launchDetails?.didNotificationLaunchApp ?? false) {
      final response = launchDetails!.notificationResponse;
      if (response != null) {
        _handleNotificationResponse(response);
      }
    }
  }

  void _handleNotificationResponse(NotificationResponse response) {
    // Check if this is a FILE_DOWNLOADED notification
    if (response.payload != null &&
        response.payload!.startsWith('FILE_DOWNLOADED:')) {
      // For FILE_DOWNLOADED notifications, show a snackbar instead of opening the file
      final filePath = response.payload!.substring('FILE_DOWNLOADED:'.length);
      _showDownloadedSnackbar(filePath);
    } else {
      // For other notifications, show the payload in an alert dialog
      _showNotificationPayload(response.payload);
    }
  }

  void _showDownloadedSnackbar(String filePath) {
    if (globalNavigatorKey.currentState?.context != null) {
      final context = globalNavigatorKey.currentState!.context;
      final fileName = filePath.split('/').last;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(t('downloadedX', args: [fileName])),
          action: SnackBarAction(
            label: 'showInFileManager'.t(),
            onPressed: () {
              _showInFileManager(filePath);
            },
          ),
        ),
      );
    }
  }

  void _showInFileManager(String filePath) {
    // Use AndroidIntent to show the file in file manager
    try {
      final intent = AndroidIntent(
        action: 'android.intent.action.VIEW',
        data: 'file://$filePath',
        type: '*/*',
        flags: <int>[Flag.FLAG_ACTIVITY_NEW_TASK],
      );
      intent.launch();
    } catch (e) {
      // If launching fails, show an error message
      if (globalNavigatorKey.currentState?.context != null) {
        ScaffoldMessenger.of(
          globalNavigatorKey.currentState!.context,
        ).showSnackBar(
          SnackBar(
            content: Text('Failed to open file manager'),
            duration: Duration(seconds: 2),
          ),
        );
      }
    }
  }

  void _showNotificationPayload(String? payload, {bool doublePop = false}) {
    if (payload?.isNotEmpty == true) {
      final lines = payload!.split('\n');
      final title = lines.first;
      final content = lines.sublist(1).join('\n');
      appNavigatorKey.currentState?.push(
        PageRouteBuilder(
          pageBuilder: (context, _, _) => AlertDialog(
            title: Text(title),
            content: Text(content),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(null);
                  if (doublePop) {
                    Navigator.of(context).pop(null);
                  }
                },
                child: Text('ok'.t()),
              ),
            ],
          ),
        ),
      );
    }
  }

  Future<void> cancel(int id) async {
    if (!isInitialized) {
      await initialize();
    }
    await notifications.cancel(id: id);
  }

  Future<void> notifyRaw(
    int id,
    String title,
    String message,
    String channelCode,
    String channelName,
    String channelDescription,
    Importance importance, {
    bool cancelExisting = false,
    int? progPercent,
    bool onlyAlertOnce = false,
    String? payload,
    List<AndroidNotificationAction>? androidActions,
  }) async {
    if (cancelExisting) {
      await cancel(id);
    }
    if (!isInitialized) {
      await initialize();
    }
    await notifications.show(
      id: id,
      title: title,
      body: message,
      notificationDetails: NotificationDetails(
        android: AndroidNotificationDetails(
          channelCode,
          channelName,
          channelDescription: channelDescription,
          importance: importance,
          priority:
              importanceToPriority[importance] ?? Priority.defaultPriority,
          groupKey: '$updatiumId.$channelCode',
          progress: progPercent ?? 0,
          maxProgress: 100,
          showProgress: progPercent != null,
          onlyAlertOnce: onlyAlertOnce,
          indeterminate: progPercent != null && progPercent < 0,
          actions: androidActions,
        ),
      ),
      payload: payload,
    );
  }

  Future<void> notify(
    UpdatiumNotification notif, {
    bool cancelExisting = false,
  }) => notifyRaw(
    notif.id,
    notif.title,
    notif.message,
    notif.channelCode,
    notif.channelName,
    notif.channelDescription,
    notif.importance,
    cancelExisting: cancelExisting,
    onlyAlertOnce: notif.onlyAlertOnce,
    progPercent: notif.progPercent,
    payload: notif.payload,
    androidActions: notif.androidActions,
  );
}
