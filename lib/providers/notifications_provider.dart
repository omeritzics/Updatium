// Exposes functions that can be used to send notifications to the user
// Contains a set of pre-defined UpdatiumNotification objects that should be used throughout the app

import 'package:updatium/services/slang_converter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:android_intent_plus/android_intent.dart';
import 'package:android_intent_plus/flag.dart';

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
        t('updatesAvailable'),
        '',
        'UPDATES_AVAILABLE',
        t('updatesAvailableNotifChannel'),
        t('updatesAvailableNotifDescription'),
        Importance.max,
      ) {
    message = updates.isEmpty
        ? t('noNewUpdates')
        : updates.length == 1
        ? t('xHasAnUpdate', args: [updates[0].finalName])
        : plural(
            'xAndNMoreUpdatesAvailable',
            updates.length - 1,
            namedArgs: {'app': updates[0].finalName},
          );
  }
}

class SilentUpdateNotification extends UpdatiumNotification {
  SilentUpdateNotification(List<App> updates, bool succeeded, {int? id})
    : super(
        id ?? 3,
        succeeded ? t('appsUpdated') : t('appsNotUpdated'),
        '',
        'APPS_UPDATED',
        t('appsUpdatedNotifChannel'),
        t('appsUpdatedNotifDescription'),
        Importance.defaultImportance,
      ) {
    message = updates.length == 1
        ? t(
            succeeded ? 'xWasUpdatedToY' : 'xWasNotUpdatedToY',
            args: [updates[0].finalName, updates[0].latestVersion],
          )
        : plural(
            succeeded ? 'xAndNMoreUpdatesInstalled' : "xAndNMoreUpdatesFailed",
            updates.length - 1,
            namedArgs: {'app': updates[0].finalName},
          );
  }
}

class SilentUpdateAttemptNotification extends UpdatiumNotification {
  SilentUpdateAttemptNotification(List<App> updates, {int? id})
    : super(
        id ?? 3,
        t('appsPossiblyUpdated'),
        '',
        'APPS_POSSIBLY_UPDATED',
        t('appsPossiblyUpdatedNotifChannel'),
        t('appsPossiblyUpdatedNotifDescription'),
        Importance.defaultImportance,
      ) {
    message = updates.length == 1
        ? t(
            'xWasPossiblyUpdatedToY',
            args: [updates[0].finalName, updates[0].latestVersion],
          )
        : plural(
            'xAndNMoreUpdatesPossiblyInstalled',
            updates.length - 1,
            namedArgs: {'app': updates[0].finalName},
          );
  }
}

class ErrorCheckingUpdatesNotification extends UpdatiumNotification {
  ErrorCheckingUpdatesNotification(String error, {int? id})
    : super(
        id ?? 5,
        t('errorCheckingUpdates'),
        error,
        'BG_UPDATE_CHECK_ERROR',
        t('errorCheckingUpdatesNotifChannel'),
        t('errorCheckingUpdatesNotifDescription'),
        Importance.high,
        payload: "${t('errorCheckingUpdates')}\n$error",
      );
}

class AppsRemovedNotification extends UpdatiumNotification {
  AppsRemovedNotification(List<List<String>> namedReasons)
    : super(
        6,
        t('appsRemoved'),
        '',
        'APPS_REMOVED',
        t('appsRemovedNotifChannel'),
        t('appsRemovedNotifDescription'),
        Importance.max,
      ) {
    if (namedReasons.isEmpty) {
      message = t('appsRemoved');
    } else {
      message = '';
      for (var r in namedReasons) {
        message += '${t('xWasRemovedDueToErrorY', args: [r[0], r[1]])} \n';
      }
      message = message.trim();
    }
  }
}

class DownloadNotification extends UpdatiumNotification {
  DownloadNotification(String appName, int progPercent)
    : super(
        appName.hashCode,
        t('downloadingX', args: [appName]),
        '',
        'APP_DOWNLOADING',
        t('downloadingXNotifChannel', args: [t('app')]),
        t('downloadNotifDescription'),
        Importance.low,
        onlyAlertOnce: true,
        progPercent: progPercent,
      );
}

class DownloadedNotification extends UpdatiumNotification {
  DownloadedNotification(String fileName, String downloadUrl, String filePath)
    : super(
        downloadUrl.hashCode,
        t('downloadedX', args: [fileName]),
        '',
        'FILE_DOWNLOADED',
        t('downloadedXNotifChannel', args: [t('app')]),
        t('downloadedX', args: [t('app')]),
        Importance.defaultImportance,
        payload: 'FILE_DOWNLOADED:$filePath',
      );
}

final completeInstallationNotification = UpdatiumNotification(
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
        t('checkingForUpdates'),
        appName,
        'BG_UPDATE_CHECK',
        t('checkingForUpdatesNotifChannel'),
        t('checkingForUpdatesNotifDescription'),
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
            _handleNotificationResponse(response);
          },
        ) ??
        false;
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
      final fileName = filePath.isEmpty ? '' : filePath.split('/').last;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(t('downloadedX', args: [fileName])),
          action: SnackBarAction(
            label: t('showInFileManager'),
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
      var parts = payload!.split('\n');
      var title = parts.isNotEmpty ? parts.first : '';
      var content = parts.length > 1 ? parts.sublist(1).join('\n') : '';
      globalNavigatorKey.currentState?.push(
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
                child: Text(t('ok')),
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
          priority: importanceToPriority[importance] ?? Priority.defaultPriority,
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
