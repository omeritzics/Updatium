import 'dart:async';
import 'dart:io' show SocketException;
import 'dart:ui' show Locale;
import 'dart:path';

import 'package:android_package_installer/android_package_installer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:updatium/providers/logs_provider.dart';
import 'package:updatium/providers/source_provider.dart';
import 'package:provider/provider.dart';
import 'package:updatium/services/slang_converter.dart';

class UpdatiumError {
  late String message;
  bool unexpected;
  UpdatiumError(this.message, {this.unexpected = false});
  @override
  String toString() {
    return message;
  }

  @override
  String toString() =>
      url != null && url!.isNotEmpty ? '$message ($url)' : message;
}

Never rethrowOrWrapError(
  Object error, {
  String? sourceName,
  StackTrace? stack,
}) {
  if (error is UpdatiumError) {
    if (error.unexpected) {
      final resolvedStack = error.stack ?? StackTrace.current;
      unawaited(
        LogsProvider().add(
          'Unexpected UpdatiumError: ${error.toString()}\n$resolvedStack',
          level: LogLevel.error,
        ),
      );
      throw UpdatiumError(
        error.message,
        code: 'UNEXPECTED',
        unexpected: true,
        stack: resolvedStack,
        data: error.data,
        url: error.url,
      );
    }
    throw error;
  }
  final capturedStack = stack ?? StackTrace.current;
  unawaited(
    LogsProvider().add(
      'Wrapping unexpected error: $error\n$capturedStack',
      level: LogLevel.error,
    ),
  );
  throw UpdatiumError(
    sourceName != null ? '$sourceName: $error' : error.toString(),
    code: 'UNEXPECTED',
    unexpected: true,
    stack: capturedStack,
  );
}

class RateLimitError extends UpdatiumError {
  late int remainingMinutes;
  RateLimitError(this.remainingMinutes)
    : super.withCode(
        'RATE_LIMIT',
        data: {'remainingMinutes': remainingMinutes},
      );
}

class InvalidURLError extends UpdatiumError {
  InvalidURLError(String sourceName)
    : super(t('invalidURLForSource', args: [sourceName]));
}

class CredsNeededError extends UpdatiumError {
  CredsNeededError(String sourceName)
    : super(t('requiresCredentialsInSettings', args: [sourceName]));
}

class NoReleasesError extends UpdatiumError {
  NoReleasesError({String? note})
    : super(
        '${t('noReleaseFound')}${note?.isNotEmpty == true ? '\n\n$note' : ''}',
      );
}

class NoAPKError extends UpdatiumError {
  NoAPKError() : super(t('noAPKFound'));
}

class NoVersionError extends UpdatiumError {
  NoVersionError() : super(t('noVersionFound'));
}

class UnsupportedURLError extends UpdatiumError {
  UnsupportedURLError() : super(t('urlMatchesNoSource'));
}

class DowngradeError extends UpdatiumError {
  DowngradeError(int currentVersionCode, int newVersionCode)
    : super(
        '${t('cantInstallOlderVersion')} (versionCode $currentVersionCode ➔ $newVersionCode)',
      );
}

class InstallError extends UpdatiumError {
  InstallError(int code)
    : super.withCode(
        'INSTALL_FAILED',
        data: {
          'errorCode': code,
          'message': PackageInstallerStatus.byCode(code).name,
        },
      );
}

class IDChangedError extends UpdatiumError {
  IDChangedError(String newId) : super('${t('appIdMismatch')} - $newId');
}

class RepositoryRenamedError extends UpdatiumError {
  final String oldUrl;
  final String newUrl;
  RepositoryRenamedError(this.oldUrl, this.newUrl) : super(t('repoRenamed'));
}

class NotImplementedError extends UpdatiumError {
  NotImplementedError() : super(t('functionNotImplemented'));
}

class MultiAppMultiError extends UpdatiumError {
  Map<String, dynamic> rawErrors = {};
  Map<String, List<String>> idsByErrorString = {};
  Map<String, String> appIdNames = {};

  MultiAppMultiError() : super(t('placeholder'), unexpected: true);

  void add(String appId, dynamic error, {String? appName}) {
    if (error is SocketException) {
      // Use the concise message rather than the verbose OS-level toString.
      error = error.message;
    }
    rawErrors[appId] = error;
    final string = error.toString();
    var tempIds = idsByErrorString.remove(string);
    if (tempIds == null) {
      tempIds = [];
      idsByErrorString[string] = tempIds;
    }
    tempIds.add(appId);
    if (appName != null) {
      appIdNames[appId] = appName;
    }
  }

  String errorString(String appId, {bool includeIdsWithNames = false}) =>
      '${appIdNames.containsKey(appId) ? '${appIdNames[appId]}${includeIdsWithNames ? ' ($appId)' : ''}' : appId}: ${rawErrors[appId].toString()}';

  String errorsAppsString(
    String errString,
    List<String> appIds, {
    bool includeIdsWithNames = false,
  }) =>
      '$errString [${list2FriendlyString(appIds.map((id) => appIdNames.containsKey(id) == true ? '${appIdNames[id]}${includeIdsWithNames ? ' ($id)' : ''}' : id).toList())}]';

  @override
  String toString() => idsByErrorString.entries
      .map((e) => errorsAppsString(e.key, e.value))
      .join('\n\n');
}

void showMessage(dynamic e, BuildContext context, {bool isError = false}) {
  Provider.of<LogsProvider>(
    context,
    listen: false,
  ).add(e.toString(), level: isError ? LogLevels.error : LogLevels.info);
  if (e is String || (e is UpdatiumError && !e.unexpected)) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(e.toString())));
  } else {
    showDialog(
      context: context,
      builder: (BuildContext ctx) {
        return AlertDialog(
          scrollable: true,
          title: Text(
            e is MultiAppMultiError
                ? tr(isError ? 'someErrors' : 'updates')
                : tr(isError ? 'unexpectedError' : 'unknown'),
          ),
          content: GestureDetector(
            onLongPress: () {
              Clipboard.setData(ClipboardData(text: e.toString()));
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text(t('copiedToClipboard'))));
            },
            child: Text(e.toString()),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(null);
              },
              child: Text(t('ok')),
            ),
          ],
        );
      },
    );
  }
}

Locale? _appCurrentLocale;

void setAppLocale(Locale? locale) => _appCurrentLocale = locale;

String? get currentLanguageCode => _appCurrentLocale?.languageCode;

bool isEnglish() {
  if (_appCurrentLocale != null) return _appCurrentLocale!.languageCode == 'en';
  return false;
}

String lowerCaseIfEnglish(String str) => isEnglish() ? str.toLowerCase() : str;

String list2FriendlyString(List<String> list) {
  final isUsingEnglish = isEnglish();
  return list.length == 2
      ? '${list[0]} ${t('and')} ${list[1]}'
      : list
            .asMap()
            .entries
            .map(
              (e) =>
                  e.value +
                  (e.key == list.length - 1
                      ? ''
                      : e.key == list.length - 2
                      ? '${isUsingEnglish ? ',' : ''} ${t('and')} '
                      : ', '),
            )
            .join('');
}
