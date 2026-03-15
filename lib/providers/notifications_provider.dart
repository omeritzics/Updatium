// Exposes functions that can be used to send notifications to the user
// Contains a set of pre-defined UpdatiumNotification objects that should be used throughout the app

import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:updatium/components/button_helpers.dart';
import 'package:updatium/main.dart';
import 'package:updatium/providers/settings_provider.dart';
import 'package:updatium/providers/source_provider.dart';
import 'package:updatium/generated/l10n.dart';

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
  });
}

class UpdateNotification extends UpdatiumNotification {
  UpdateNotification(List<App> updates, {int? id})
    : super(
        id ?? 2,
        AppLocalizations.of(context)!.updatesAvailable,
        '',
        'UPDATES_AVAILABLE',
        AppLocalizations.of(context)!.updatesAvailableNotifChannel,
        AppLocalizations.of(context)!.updatesAvailableNotifDescription,
        Importance.max,
      ) {
    message = updates.isEmpty
        ? AppLocalizations.of(context)!.noNewUpdates
        : updates.length == 1
        ? AppLocalizations.of(context)!.xHasAnUpdate(args: [updates[0].finalName])
        : AppLocalizations.of(context)!.xAndNMoreUpdatesAvailable(
            updates[0].finalName, updates.length - 1,
          )
  }
}

class SilentUpdateNotification extends UpdatiumNotification {
  SilentUpdateNotification(List<App> updates, bool succeeded, {int? id})
    : super(
        id ?? 3,
        succeeded ? AppLocalizations.of(context)!.appsUpdated : AppLocalizations.of(context)!.appsNotUpdated,
        '',
        'APPS_UPDATED',
        AppLocalizations.of(context)!.appsUpdatedNotifChannel,
        AppLocalizations.of(context)!.appsUpdatedNotifDescription,
        Importance.defaultImportance,
      ) {
    message = updates.length == 1
        ? AppLocalizations.of(globalNavigatorKey.currentContext!)!.xWasUpdatedToY(
            updates[0].finalName, updates[0].latestVersion,
          )
        : AppLocalizations.of(globalNavigatorKey.currentContext!)!.xWasNotUpdatedToY(
            updates[0].finalName, updates[0].latestVersion,
          )
        : succeeded
            ? AppLocalizations.of(globalNavigatorKey.currentContext!)!.xAndNMoreUpdatesInstalled(
                updates[0].finalName, updates.length - 1,
              )
            : AppLocalizations.of(globalNavigatorKey.currentContext!)!.xAndNMoreUpdatesFailed(
                updates[0].finalName, updates.length - 1,
              )
  }
}

class SilentUpdateAttemptNotification extends UpdatiumNotification {
  SilentUpdateAttemptNotification(List<App> updates, {int? id})
    : super(
        id ?? 3,
        AppLocalizations.of(context)!.appsPossiblyUpdated,
        '',
        'APPS_POSSIBLY_UPDATED',
        AppLocalizations.of(context)!.appsPossiblyUpdatedNotifChannel,
        AppLocalizations.of(context)!.appsPossiblyUpdatedNotifDescription,
        Importance.defaultImportance,
      ) {
    message = updates.length == 1
        ? AppLocalizations.of(globalNavigatorKey.currentContext!)!.xWasPossiblyUpdatedToY(
            updates[0].finalName, updates[0].latestVersion,
          )
        : AppLocalizations.of(globalNavigatorKey.currentContext!)!.xAndNMoreUpdatesPossiblyInstalled(
            updates[0].finalName, updates.length - 1,
          )
  }
}

class ErrorCheckingUpdatesNotification extends UpdatiumNotification {
  ErrorCheckingUpdatesNotification(String error, {int? id})
    : super(
        id ?? 5,
        AppLocalizations.of(context)!.errorCheckingUpdates,
        error,
        'BG_UPDATE_CHECK_ERROR',
        AppLocalizations.of(context)!.errorCheckingUpdatesNotifChannel,
        AppLocalizations.of(context)!.errorCheckingUpdatesNotifDescription,
        Importance.high,
        payload: "${AppLocalizations.of(context)!.errorCheckingUpdates}\n$error",
      );
}

class AppsRemovedNotification extends UpdatiumNotification {
  AppsRemovedNotification(List<List<String>> namedReasons)
    : super(
        6,
        AppLocalizations.of(context)!.appsRemoved,
        '',
        'APPS_REMOVED',
        AppLocalizations.of(context)!.appsRemovedNotifChannel,
        AppLocalizations.of(context)!.appsRemovedNotifDescription,
        Importance.max,
      ) {
    message = '';
    for (var r in namedReasons) {
      message += '${AppLocalizations.of(context)!.xWasRemovedDueToErrorY(args: [r[0], r[1]])} \n';
    }
    message = message.trim();
  }
}

class DownloadNotification extends UpdatiumNotification {
  DownloadNotification(String appName, int progPercent)
    : super(
        appName.hashCode,
        AppLocalizations.of(context)!.downloadingX(appName),
        '',
        'APP_DOWNLOADING',
        AppLocalizations.of(context)!.downloadingXNotifChannel(AppLocalizations.of(context)!.app),
        AppLocalizations.of(context)!.downloadNotifDescription,
        Importance.low,
        onlyAlertOnce: true,
        progPercent: progPercent,
      );
}

class DownloadedNotification extends UpdatiumNotification {
  DownloadedNotification(String fileName, String downloadUrl)
    : super(
        downloadUrl.hashCode,
        AppLocalizations.of(context)!.downloadedX(fileName),
        '',
        'FILE_DOWNLOADED',
        AppLocalizations.of(context)!.downloadedXNotifChannel(AppLocalizations.of(context)!.app),
        AppLocalizations.of(context)!.downloadedX(AppLocalizations.of(context)!.app),
        Importance.defaultImportance,
      );
}

final completeInstallationNotification = UpdatiumNotification(
  1,
  AppLocalizations.of(context)!.completeAppInstallation,
  AppLocalizations.of(context)!.updatiumMustBeOpenToInstallApps,
  'COMPLETE_INSTALL',
  AppLocalizations.of(context)!.completeAppInstallationNotifChannel,
  AppLocalizations.of(context)!.completeAppInstallationNotifDescription,
  Importance.max,
);

class CheckingUpdatesNotification extends UpdatiumNotification {
  CheckingUpdatesNotification(String appName)
    : super(
        4,
        AppLocalizations.of(context)!.checkingForUpdates,
        appName,
        'BG_UPDATE_CHECK',
        AppLocalizations.of(context)!.checkingForUpdatesNotifChannel,
        AppLocalizations.of(context)!.checkingForUpdatesNotifDescription,
        Importance.min,
      );
}

class NotificationsProvider {
  FlutterLocalNotificationsPlugin notifications =
      FlutterLocalNotificationsPlugin();

  bool isInitialized = false;

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
    isInitialized =
        await notifications.initialize(
          settings: const InitializationSettings(
            android: AndroidInitializationSettings('ic_notification'),
          ),
          onDidReceiveNotificationResponse: (NotificationResponse response) {
            _showNotificationPayload(response.payload);
          },
        ) ??
        false;
  }

  Future<void> checkLaunchByNotif() async {
    final NotificationAppLaunchDetails? launchDetails = await notifications
        .getNotificationAppLaunchDetails();
    if (launchDetails?.didNotificationLaunchApp ?? false) {
      _showNotificationPayload(
        launchDetails!.notificationResponse?.payload,
        doublePop: true,
      );
    }
  }

  void _showNotificationPayload(String? payload, {bool doublePop = false}) {
    if (payload?.isNotEmpty == true) {
      var title = (payload ?? '\n\n').split('\n').first;
      var content = (payload ?? '\n\n').split('\n').sublist(1).join('\n');
      globalNavigatorKey.currentState?.push(
        PageRouteBuilder(
          pageBuilder: (context, _, _) => AlertDialog(
            title: Text(title),
            content: Text(content),
            actions: [
              AppTextButton(
                onPressed: () {
                  Navigator.of(context).pop(null);
                  if (doublePop) {
                    Navigator.of(context).pop(null);
                  }
                },
                child: Text(AppLocalizations.of(context)!.ok),
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
          priority: importanceToPriority[importance]!,
          groupKey: '$updatiumId.$channelCode',
          progress: progPercent ?? 0,
          maxProgress: 100,
          showProgress: progPercent != null,
          onlyAlertOnce: onlyAlertOnce,
          indeterminate: progPercent != null && progPercent < 0,
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
  );
}
