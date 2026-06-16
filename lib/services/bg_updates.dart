import 'package:background_fetch/background_fetch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_foreground_task/flutter_foreground_task.dart';
import 'package:updatium/providers/apps_provider.dart';
import 'package:updatium/services/slang_converter.dart';

@pragma('vm:entry-point')
void backgroundFetchHeadlessTask(HeadlessEvent task) async {
  String taskId = task.taskId;
  bool isTimeout = task.timeout;
  if (isTimeout) {
    debugPrint('BG update task timed out.');
    BackgroundFetch.finish(taskId);
    return;
  }
  await bgUpdateCheck(taskId, null);
  BackgroundFetch.finish(taskId);
}

@pragma('vm:entry-point')
void startCallback() {
  FlutterForegroundTask.setTaskHandler(MyTaskHandler());
}

class MyTaskHandler extends TaskHandler {
  static const String incrementCountCommand = 'incrementCount';

  @override
  Future<void> onStart(DateTime timestamp, TaskStarter starter) async {
    debugPrint('onStart(starter: ${starter.name})');
    bgUpdateCheck('bg_check', null);
  }

  @override
  void onRepeatEvent(DateTime timestamp) {
    bgUpdateCheck('bg_check', null);
  }

  @override
  Future<void> onDestroy(DateTime timestamp, bool isTimeout) async {
    debugPrint('Foreground service onDestroy(isTimeout: $isTimeout)');
  }

  @override
  void onReceiveData(Object data) {}
}

Future<ServiceRequestResult?> startForegroundService(
  bool restart, [
  int? intervalMinutes,
]) async {
  initForegroundService(intervalMinutes ?? 15);
  if (await FlutterForegroundTask.isRunningService) {
    if (restart) {
      return FlutterForegroundTask.restartService();
    }
  } else {
    return FlutterForegroundTask.startService(
      serviceTypes: [ForegroundServiceTypes.specialUse],
      serviceId: 666,
      notificationTitle: t('foregroundService'),
      notificationText: t('fgServiceNotice'),
      notificationIcon: NotificationIcon(
        metaDataName: 'io.github.omeritzics.updatium.service.NOTIFICATION_ICON',
      ),
      callback: startCallback,
    );
  }
  return null;
}

Future<ServiceRequestResult?> stopForegroundService() async {
  if (await FlutterForegroundTask.isRunningService) {
    return await FlutterForegroundTask.stopService();
  }
  return null;
}

bool _isForegroundServiceInitialized = false;

void initForegroundService([int intervalMinutes = 15]) {
  // Initialize foreground service if not already initialized
  if (!_isForegroundServiceInitialized) {
    FlutterForegroundTask.init(
      androidNotificationOptions: AndroidNotificationOptions(
        channelId: 'bg_update',
        channelName: t('foregroundService'),
        channelDescription: t('foregroundService'),
        onlyAlertOnce: true,
      ),
      iosNotificationOptions: const IOSNotificationOptions(
        showNotification: false,
        playSound: false,
      ),
      foregroundTaskOptions: ForegroundTaskOptions(
        eventAction: ForegroundTaskEventAction.repeat(intervalMinutes * 60000),
        autoRunOnBoot: true,
        autoRunOnMyPackageReplaced: true,
        allowWakeLock: false,
        allowWifiLock: false,
      ),
    );
    _isForegroundServiceInitialized = true;
  }
}
