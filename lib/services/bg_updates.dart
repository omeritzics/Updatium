import 'dart:async';
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
  static Future<void>? _inFlight;

  @override
  Future<void> onStart(DateTime timestamp, TaskStarter starter) async {
    debugPrint('onStart(starter: ${starter.name})');
    if (_inFlight == null) {
      try {
        _inFlight = bgUpdateCheck('bg_check', null);
        await _inFlight;
      } finally {
        _inFlight = null;
      }
    } else {
      debugPrint('BG update check already in progress, skipping...');
    }
  }

  @override
  void onRepeatEvent(DateTime timestamp) {
    if (_inFlight == null) {
      unawaited(_runWithGuard());
    } else {
      debugPrint('BG update check already in progress, skipping...');
    }
  }

  Future<void> _runWithGuard() async {
    try {
      _inFlight = bgUpdateCheck('bg_check', null);
      await _inFlight;
    } finally {
      _inFlight = null;
    }
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
  bool needsRestart = initForegroundService(intervalMinutes ?? 15);
  if (await FlutterForegroundTask.isRunningService) {
    if (restart || needsRestart) {
      return FlutterForegroundTask.restartService();
    }
  } else {
    return FlutterForegroundTask.startService(
      serviceTypes: [ForegroundServiceTypes.specialUse],
      serviceId: 666,
      notificationTitle: 'foregroundService'.t(),
      notificationText: 'fgServiceNotice'.t(),
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

Future<void> applyBackgroundUpdateSettings({
  required int updateInterval,
  required bool useFGService,
}) async {
  if (updateInterval == 0) {
    await stopForegroundService();
    await BackgroundFetch.stop();
  } else {
    if (useFGService) {
      await BackgroundFetch.stop();
      await startForegroundService(false, updateInterval);
    } else {
      await stopForegroundService();
      await BackgroundFetch.start();
    }
  }
}

int? _lastInitializedInterval;

bool initForegroundService(int intervalMinutes) {
  // Re-initialize if interval changed or not yet initialized
  if (_lastInitializedInterval != intervalMinutes) {
    FlutterForegroundTask.init(
      androidNotificationOptions: AndroidNotificationOptions(
        channelId: 'bg_update',
        channelName: 'foregroundService'.t(),
        channelDescription: 'foregroundService'.t(),
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
    _lastInitializedInterval = intervalMinutes;
    return true;
  }
  return false;
}
