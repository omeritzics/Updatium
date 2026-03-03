// Exposes functions that can be used to send notifications to the user
// Contains a set of pre-defined UpdatiumNotification objects that should be used throughout the app

import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:updatium/components/button_helpers.dart';
import 'package:updatium/main.dart';
import 'package:updatium/providers/settings_provider.dart';
import 'package:updatium/providers/source_provider.dart';

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
        'Updates available',
        '',
        'UPDATES_AVAILABLE',
        'Updates available notifications',
        'Notifications about available updates',
        Importance.max,
      ) {
    message = updates.isEmpty
        ? 'No new updates'
        : updates.length == 1
        ? '${updates[0].finalName} has an update'
        : '${updates[0].finalName} and ${(updates.length - 1).toString()} more updates available';
  }
}

class SilentUpdateNotification extends UpdatiumNotification {
  SilentUpdateNotification(List<App> updates, bool succeeded, {int? id})
    : super(
        id ?? 3,
        succeeded ? 'Apps updated' : 'Apps not updated',
        '',
        'APPS_UPDATED',
        'Apps updated notifications',
        'Notifications about app updates',
        Importance.defaultImportance,
      ) {
    message = updates.length == 1
        ? succeeded ? '${updates[0].finalName} was updated to ${updates[0].latestVersion}' : '${updates[0].finalName} was not updated to ${updates[0].latestVersion}'
        : succeeded ? '${updates[0].finalName} and ${(updates.length - 1).toString()} more updates installed' : '${updates[0].finalName} and ${(updates.length - 1).toString()} more updates failed';
  }
}

class SilentUpdateAttemptNotification extends UpdatiumNotification {
  SilentUpdateAttemptNotification(List<App> updates, {int? id})
    : super(
        id ?? 3,
        'Apps possibly updated',
        '',
        'APPS_POSSIBLY_UPDATED',
        'Apps possibly updated notifications',
        'Notifications about possible app updates',
        Importance.defaultImportance,
      ) {
    message = updates.length == 1
        ? '${updates[0].finalName} was possibly updated to ${updates[0].latestVersion}'
        : '${updates[0].finalName} and ${(updates.length - 1).toString()} more updates possibly installed';
  }
}

class ErrorCheckingUpdatesNotification extends UpdatiumNotification {
  ErrorCheckingUpdatesNotification(String error, {int? id})
    : super(
        id ?? 5,
        'Error checking updates',
        error,
        'BG_UPDATE_CHECK_ERROR',
        'Error checking updates notifications',
        'Notifications about update check errors',
        Importance.high,
        payload: "Error checking updates\n$error",
      );
}

class AppsRemovedNotification extends UpdatiumNotification {
  AppsRemovedNotification(List<List<String>> namedReasons)
    : super(
        6,
        'Apps removed',
        '',
        'APPS_REMOVED',
        'Apps removed notifications',
        'Notifications about removed apps',
        Importance.max,
      ) {
    message = '';
    for (var r in namedReasons) {
      message += '${r[0]} was removed due to error: ${r[1]} \n';
    }
    message = message.trim();
  }
}

class DownloadNotification extends UpdatiumNotification {
  DownloadNotification(String appName, int progPercent)
    : super(
        appName.hashCode,
        'Downloading $appName',
        '',
        'APP_DOWNLOADING',
        'Downloading apps',
        'App download progress notifications',
        Importance.low,
        onlyAlertOnce: true,
        progPercent: progPercent,
      );
}

class DownloadedNotification extends UpdatiumNotification {
  DownloadedNotification(String fileName, String downloadUrl)
    : super(
        downloadUrl.hashCode,
        'Downloaded $fileName',
        '',
        'FILE_DOWNLOADED',
        'Downloaded apps',
        'Downloaded app',
        Importance.defaultImportance,
      );
}

final completeInstallationNotification = UpdatiumNotification(
  1,
  'Complete app installation',
  'Updatium must be open to install apps',
  'COMPLETE_INSTALL',
  'Complete app installation notifications',
  'Notifications about completed app installations',
  Importance.max,
);

class CheckingUpdatesNotification extends UpdatiumNotification {
  CheckingUpdatesNotification(String appName)
    : super(
        4,
        'Checking for updates',
        appName,
        'BG_UPDATE_CHECK',
        'Checking for updates notifications',
        'Notifications about update checks',
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
                child: Text('OK'),
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
