// Manages state related to the list of Apps tracked by Updatium,
// Exposes related functions such as those used to add, remove, download, and install Apps.

import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'dart:ui';
import 'package:battery_plus/battery_plus.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:crypto/crypto.dart';
import 'dart:typed_data';

import 'package:android_system_font/android_system_font.dart';
import 'package:android_package_manager/android_package_manager.dart';
import 'package:battery_plus/battery_plus.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/io_client.dart';
import 'package:updatium/app_sources/directAPKLink.dart';
import 'package:updatium/app_sources/html.dart';
import 'package:updatium/components/generated_form.dart';
import 'package:updatium/components/generated_form_modal.dart';
import 'package:updatium/custom_errors.dart';
import 'package:updatium/main.dart';
import 'package:updatium/providers/logs_provider.dart';
import 'package:updatium/providers/notifications_provider.dart';
import 'package:updatium/providers/settings_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:provider/provider.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_fgbg/flutter_fgbg.dart';
import 'package:updatium/providers/source_provider.dart';
import 'package:http/http.dart';
import 'package:android_intent_plus/android_intent.dart';
import 'package:flutter_archive/flutter_archive.dart';
import 'package:archive/archive.dart' as archive;
import 'package:share_plus/share_plus.dart';
import 'package:shared_storage/shared_storage.dart' as saf;
import 'package:shizuku_apk_installer/shizuku_apk_installer.dart';

final packageManager = AndroidPackageManager();
final packageInfoFlags = PackageInfoFlags({PMFlag.getSigningCertificates});

/// Live download state for an app: the progress percent (listenable, with -1
/// meaning "installing" and null meaning "idle") plus the bytes downloaded and
/// total size when known. Held by reference and shared across [AppInMemory]
/// copies so UI listeners bound to an earlier instance keep updating even after
/// saveApps replaces the map entry with a copy.
class DownloadState {
  final ValueNotifier<double?> progress = ValueNotifier(null);
  int? receivedBytes;
  int? totalBytes;
}

/// Runtime wrapper for [App] holding download state and OS package info.
class AppInMemory {
  late App app;
  final DownloadState download;
  PackageInfo? installedInfo;
  Uint8List? icon;
  String? sourceType;

  ValueNotifier<double?> get downloadProgressNotifier => download.progress;

  double? get downloadProgress => download.progress.value;
  set downloadProgress(double? value) => download.progress.value = value;

  int? get downloadReceivedBytes => download.receivedBytes;
  set downloadReceivedBytes(int? value) => download.receivedBytes = value;

  int? get downloadTotalBytes => download.totalBytes;
  set downloadTotalBytes(int? value) => download.totalBytes = value;

  AppInMemory(
    this.app,
    double? downloadProgress,
    this.installedInfo,
    this.icon, {
    this.sourceType,
    DownloadState? download,
  }) : download =
           download ?? (DownloadState()..progress.value = downloadProgress);

  AppInMemory deepCopy() => AppInMemory(
    app.copyWith(),
    downloadProgress,
    installedInfo,
    icon,
    sourceType: sourceType,
    download: download,
  );

  AppInMemory copyWith({
    App? app,
    PackageInfo? installedInfo,
    Uint8List? icon,
    String? sourceType,
  }) => AppInMemory(
    app ?? this.app,
    downloadProgress,
    installedInfo ?? this.installedInfo,
    icon ?? this.icon,
    sourceType: sourceType ?? this.sourceType,
    download: download,
  );

  String get name => app.finalName;
  String get author => app.overrideAuthor ?? app.finalAuthor;

  bool get needsRefreshBeforeDownload =>
      app.settings.getBool('refreshBeforeDownload') ||
      (app.apkUrls.isNotEmpty && app.apkUrls.first.value == 'placeholder');

  bool get hasMultipleSigners {
    return installedInfo?.signingInfo?.hasMultipleSigners ?? false;
  }

  List<String> get certificateHashes {
    // https://developer.android.com/reference/android/content/pm/SigningInfo#getApkContentsSigners()
    final signatures = hasMultipleSigners
        ? installedInfo?.signingInfo?.apkContentSigners
        : installedInfo?.signingInfo?.signingCertificateHistory;

    return signatures?.map((signature) {
              final digest = sha256.convert(signature);
              return digest.bytes
                    .map((b) => b.toRadixString(16).padLeft(2, '0').toUpperCase())
                    .join(':');
          }).toList() ??
          [];
  }
}

class DownloadedApk {
  String appId;
  File file;
  DownloadedApk(this.appId, this.file);
}

enum DownloadedDirType { xapk, zip, tarball }

class DownloadedDir {
  String appId;
  File file;
  Directory extracted;
  DownloadedDirType type;
  DownloadedDir(this.appId, this.file, this.extracted, this.type);
}

/// Delegates to [VersionService.findStandardFormatsForVersion].
Set<String> findStandardFormatsForVersion(String version, bool strict) =>
    VersionService().findStandardFormatsForVersion(version, strict);

/// Removes all matching elements and appends the last match to the end.
/// This is intentionally deduplicating — only one instance is re-added.
List<T> _moveToEnd<T extends Object>(List<T> arr, bool Function(T) match) {
  T? temp;
  arr.removeWhere((element) {
    if (match(element)) {
      temp = element;
      return true;
    }
    return false;
  });
  if (temp != null) {
    arr.add(temp as T);
  }
  return arr;
}

List<String> moveStrToEnd(List<String> arr, String str, {String? strB}) =>
    _moveToEnd(arr, (e) => e == str || e == strB);

/// See [_moveToEnd] for semantic details.
List<MapEntry<String, int>> moveStrToEndMapEntryWithCount(
  List<MapEntry<String, int>> arr,
  MapEntry<String, int> str, {
  MapEntry<String, int>? strB,
}) => _moveToEnd(arr, (e) => e.key == str.key || e.key == strB?.key);

Future<File> downloadFileWithRetry(
  String url,
  String fileName,
  bool fileNameHasExt,
  Function? onProgress,
  String destDir, {
  bool useExisting = true,
  Map<String, String>? headers,
  int retries = _defaultRetries,
  bool allowInsecure = false,
  LogsProvider? logs,
}) async {
  try {
    return await downloadFile(
      url,
      fileName,
      fileNameHasExt,
      onProgress,
      destDir,
      useExisting: useExisting,
      headers: headers,
      allowInsecure: allowInsecure,
      logs: logs,
    );
  } catch (e) {
    if (retries > 0 && e is ClientException) {
      await Future.delayed(const Duration(seconds: 5));
      return await downloadFileWithRetry(
        url,
        fileName,
        fileNameHasExt,
        onProgress,
        destDir,
        useExisting: useExisting,
        headers: headers,
        retries: (retries - 1),
        allowInsecure: allowInsecure,
        logs: logs,
      );
    } else {
      rethrow;
    }
  }
}

String hashListOfLists(List<List<int>> data) {
  final bytes = utf8.encode(jsonEncode(data));
  return sha256.convert(bytes).toString().substring(0, 8);
}

Future<String> checkPartialDownloadHashDynamic(
  String url, {
  int startingSize = _partialHashCheckStartingSize,
  int lowerLimit = _partialHashCheckLowerLimit,
  Map<String, String>? headers,
  bool allowInsecure = false,
}) async {
  for (int i = startingSize; i >= lowerLimit; i -= _partialHashCheckDecrement) {
    // Both requests fetch the same byte range to confirm the hash is
    // stable. The loop decrements on mismatch; when two consecutive
    // requests agree, the hash is considered valid.
    final List<String> ab = await Future.wait([
      checkPartialDownloadHash(
        url,
        i,
        headers: headers,
        allowInsecure: allowInsecure,
      ),
      checkPartialDownloadHash(
        url,
        i,
        headers: headers,
        allowInsecure: allowInsecure,
      ),
    ]);
    if (ab[0] == ab[1]) {
      return ab[0];
    }
  }
  throw NoVersionError();
}

Future<String> checkPartialDownloadHash(
  String url,
  int bytesToGrab, {
  Map<String, String>? headers,
  bool allowInsecure = false,
}) async {
  final req = Request('GET', Uri.parse(url));
  if (headers != null) {
    req.headers.addAll(headers);
  }
  req.headers[HttpHeaders.rangeHeader] = 'bytes=0-$bytesToGrab';
  final client = IOClient(createHttpClient(allowInsecure));
  final response = await client.send(req);
  if (response.statusCode < 200 || response.statusCode > 299) {
    throw UpdatiumError(response.reasonPhrase ?? tr('unexpectedError'));
  }
  final List<List<int>> bytes = await response.stream.take(bytesToGrab).toList();
  return hashListOfLists(bytes);
}

Future<String?> checkETagHeader(
  String url, {
  Map<String, String>? headers,
  bool allowInsecure = false,
}) async {
  // Send the initial request but cancel it as soon as you have the headers
  final reqHeaders = headers ?? {};
  final req = Request('GET', Uri.parse(url));
  req.headers.addAll(reqHeaders);
  final client = IOClient(createHttpClient(allowInsecure));
  final StreamedResponse response = await client.send(req);
  final resHeaders = response.headers;
  client.close();
  return resHeaders[HttpHeaders.etagHeader]
      ?.replaceAll('"', '')
      .hashCode
      .toString();
}

void deleteFile(File file) {
  try {
    file.deleteSync();
  } on PathAccessException catch (e) {
    throw UpdatiumError(
      t('fileDeletionError', args: [e.path ?? 'unknown'.t()]),
    );
  }
}

String generateUniqueFileName(String baseName, String ext, String destDir) {
  String fileName = '$baseName.$ext';
  int counter = 1;
  while (File('$destDir/$fileName').existsSync()) {
    fileName = '$baseName($counter).$ext';
    counter++;
  }
  return fileName;
}

Future<String?> promptForFileName(
  BuildContext context,
  String suggestedName,
) async {
  final controller = TextEditingController(text: suggestedName);
  return showDialog<String>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('fileExists'.t()),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('fileExistsPrompt'.t()),
            const SizedBox(height: 16),
            TextField(
              controller: controller,
              decoration: InputDecoration(labelText: 'fileName'.t()),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, null),
            child: Text('cancel'.t()),
          ),
          M3EFilledButton(
            onPressed: () => Navigator.pop(context, controller.text),
            child: Text('download'.t()),
          ),
        ],
      );
    },
  ).then((result) {
    controller.dispose();
    return result;
  });
}

/// Waits for a concurrent download to finish by polling the temp file size.
/// Returns the completed file if one is available, or null if a fresh download is needed.
Future<File?> _waitForConcurrentDownload(
  File tempDownloadedFile,
  File downloadedFile,
  LogsProvider? logs,
) async {
  unawaited(
    logs?.add(
      'Partial download exists - will wait: ${tempDownloadedFile.uri.pathSegments.last}',
    ),
  );
  int currentTempFileSize = await tempDownloadedFile.length();
  int pollCount = 0;
  while (pollCount < _maxDownloadPolls) {
    pollCount++;
    await Future.delayed(const Duration(seconds: _downloadPollIntervalSeconds));
    if (tempDownloadedFile.existsSync()) {
      final int newTempFileSize;
      try {
        newTempFileSize = await tempDownloadedFile.length();
      } on FileSystemException {
        return downloadedFile.existsSync() ? downloadedFile : null;
      }
      if (newTempFileSize > currentTempFileSize) {
        currentTempFileSize = newTempFileSize;
        unawaited(
          logs?.add(
            'Existing partial download still in progress: ${tempDownloadedFile.uri.pathSegments.last}',
          ),
        );
      } else {
        unawaited(
          logs?.add(
            'Ignoring existing partial download: ${tempDownloadedFile.uri.pathSegments.last}',
          ),
        );
        break;
      }
    } else {
      return downloadedFile.existsSync() ? downloadedFile : null;
    }
  }
  if (downloadedFile.existsSync()) {
    unawaited(
      logs?.add(
        'Existing partial download completed - not repeating: ${tempDownloadedFile.uri.pathSegments.last}',
      ),
    );
    return downloadedFile;
  }
  unawaited(
    logs?.add(
      'Existing partial download not in progress: ${tempDownloadedFile.uri.pathSegments.last}',
    ),
  );
  return null;
}

/// Downloads a file to [destDir] with progress reporting, resuming partial downloads when supported.
Future<File> downloadFile(
  String url,
  String fileName,
  bool fileNameHasExt,
  Function? onProgress,
  String destDir, {
  bool useExisting = true,
  Map<String, String>? headers,
  bool allowInsecure = false,
  LogsProvider? logs,
}) async {
  // Send the initial request but cancel it as soon as you have the headers
  final reqHeaders = headers ?? {};
  var req = Request('GET', Uri.parse(url));
  req.headers.addAll(reqHeaders);
  final headersClient = IOClient(createHttpClient(allowInsecure));
  final StreamedResponse headersResponse = await headersClient.send(req);
  final resHeaders = headersResponse.headers;

  // Use the headers to decide what the file extension is, and
  // whether it supports partial downloads (range request), and
  // what the total size of the file is (if provided)
  String ext = resHeaders['content-disposition']?.split('.').last ?? 'apk';
  if (ext.endsWith('"') || ext.endsWith('other')) {
    ext = ext.substring(0, ext.length - 1);
  }
  if (((Uri.tryParse(url)?.path ?? url).toLowerCase().endsWith('.apk') ||
          ext == 'attachment') &&
      ext != 'apk') {
    ext = 'apk';
  }
  fileName = fileNameHasExt
      ? fileName
      : fileName.split('/').last; // Ensure the fileName is a file name
  File downloadedFile = File('$destDir/$fileName.$ext');
  if (fileNameHasExt) {
    // If the user says the filename already has an ext, ignore whatever you inferred from above
    downloadedFile = File('$destDir/$fileName');
  }

  bool rangeFeatureEnabled = false;
  if (resHeaders['accept-ranges']?.isNotEmpty == true) {
    rangeFeatureEnabled =
        resHeaders['accept-ranges']?.trim().toLowerCase() == 'bytes';
  }
  headersClient.close();

  // If you have an existing file that is usable,
  // decide whether you can use it (either return full or resume partial)
  final fullContentLength = headersResponse.contentLength;
  if (useExisting && downloadedFile.existsSync()) {
    final length = downloadedFile.lengthSync();
    if (fullContentLength == null || !rangeFeatureEnabled) {
      return downloadedFile;
    } else {
      if (length == fullContentLength) {
        return downloadedFile;
      }
      if (length > fullContentLength) {
        useExisting = false;
      }
    }
  }

  final File tempDownloadedFile = File('${downloadedFile.path}.part');

  // If there is already a temp file, a download may already be in progress - account for this (see #2073)
  final bool tempFileExists = tempDownloadedFile.existsSync();
  if (tempFileExists && useExisting) {
    final result = await _waitForConcurrentDownload(
      tempDownloadedFile,
      downloadedFile,
      logs,
    );
    if (result != null) return result;
  }

  // If the range feature is not available (or you need to start a ranged req from 0),
  // complete the already-started request, else cancel it and start a ranged request,
  // and open the file for writing in the appropriate mode
  final targetFileLength = () {
    if (!useExisting) return null;
    try {
      if (tempDownloadedFile.existsSync()) {
        return tempDownloadedFile.lengthSync();
      }
    } on FileSystemException {
      // File disappeared between existsSync and lengthSync
    }
    return null;
  }();
  int rangeStart = targetFileLength ?? 0;
  IOSink? sink;
  req = Request('GET', Uri.parse(url));
  req.headers.addAll(reqHeaders);
  if (rangeFeatureEnabled && fullContentLength != null && rangeStart > 0) {
    reqHeaders.addAll({'range': 'bytes=$rangeStart-${fullContentLength - 1}'});
    sink = tempDownloadedFile.openWrite(mode: FileMode.writeOnlyAppend);
    sentRangeRequest = true;
  } else if (tempDownloadedFile.existsSync()) {
    deleteFile(tempDownloadedFile);
  }
  final responseWithClient = await sourceRequestStreamResponse(
    'GET',
    url,
    reqHeaders,
    {'allowInsecure': allowInsecure},
  );
  final HttpClient responseClient = responseWithClient.value.key;
  final HttpClientResponse response = responseWithClient.value.value;
  try {
    // If we requested a byte range to resume a partial download but the server
    // ignored it and returned the full file (200 instead of 206 Partial
    // Content), appending would corrupt the file - discard the partial data and
    // start the download over from the beginning.
    if (sentRangeRequest && response.statusCode == HttpStatus.ok) {
      await sink?.close();
      sink = null;
      rangeStart = 0;
      if (tempDownloadedFile.existsSync()) {
        deleteFile(tempDownloadedFile);
      }
    }
    sink ??= tempDownloadedFile.openWrite(mode: FileMode.writeOnly);

  // Perform the download
  var received = 0;
  double? progress;
  DateTime? lastProgressUpdate; // Track last progress update time
  if (rangeStart > 0 && fullContentLength != null) {
    received = rangeStart;
  }
  const downloadUIUpdateInterval = Duration(milliseconds: 500);
  const downloadBufferSize = 32 * 1024; // 32KB
  final downloadBuffer = BytesBuilder();
  await response
      .asBroadcastStream()
      .map((chunk) {
        received += chunk.length;
        final now = DateTime.now();
        if (onProgress != null &&
            (lastProgressUpdate == null ||
                now.difference(lastProgressUpdate!) >=
                    downloadUIUpdateInterval)) {
          progress = fullContentLength != null
              ? clampDouble((received / fullContentLength) * 100, 0, 100)
              : 30;
          onProgress(progress);
          lastProgressUpdate = now;
        }
        return chunk;
      })
      .transform(
        StreamTransformer<List<int>, List<int>>.fromHandlers(
          handleData: (List<int> data, EventSink<List<int>> s) {
            downloadBuffer.add(data);
            if (downloadBuffer.length >= downloadBufferSize) {
              s.add(downloadBuffer.takeBytes());
            }
          },
          handleDone: (EventSink<List<int>> s) {
            if (downloadBuffer.isNotEmpty) {
              s.add(downloadBuffer.takeBytes());
            }
            s.close();
          },
        ),
      )
      .pipe(sink);
  await sink.close();
  progress = null;
  if (onProgress != null) {
    onProgress(progress);
  }
  if (response.statusCode < 200 || response.statusCode > 299) {
    deleteFile(tempDownloadedFile);
    throw response.reasonPhrase;
  }
  if (tempDownloadedFile.existsSync()) {
    tempDownloadedFile.renameSync(downloadedFile.path);
  }
  responseClient.close();
  return downloadedFile;
}

Future<List<PackageInfo>> getAllInstalledInfo() async {
  return await pm.getInstalledPackages(flags: packageInfoFlags) ?? [];
}

Future<PackageInfo?> getInstalledInfo(
  String? packageName, {
  bool printErr = true,
}) async {
  if (packageName != null) {
    try {
      return await pm.getPackageInfo(
        packageName: packageName,
        flags: packageInfoFlags,
      );
    } catch (e) {
      if (printErr) {
        print(e); // OK
      }
    }
  }
  return null;
}

Future<Directory> getAppStorageDir() async =>
    await getExternalStorageDirectory() ??
    await getApplicationDocumentsDirectory();

class AppsProvider with ChangeNotifier {
  // In memory App state (should always be kept in sync with local storage versions)
  final Map<String, AppInMemory> apps = {};
  bool loadingApps = false;
  bool gettingUpdates = false;
  final LogsProvider logs = LogsProvider();

  // Variables to keep track of the app foreground status (installs can't run in the background)
  bool isForeground = true;
  late Stream<FGBGType>? foregroundStream;
  late StreamSubscription<FGBGType>? foregroundSubscription;
  late Directory APKDir;
  late Directory iconsCacheDir;
  late final SettingsProvider settingsProvider = SettingsProvider();

  Iterable<AppInMemory> getAppValues() => apps.values;

  void AppsProvider({isBg = false}) {
    // Subscribe to changes in the app foreground status
    foregroundStream = FGBGEvents.instance.stream.asBroadcastStream();
    foregroundSubscription = foregroundStream?.listen((event) async {
      isForeground = event == FGBGType.foreground;
      if (isForeground) {
        await loadApps();
      }
    });
    () async {
      await settingsProvider.initializeSettings();
      final cacheDirs = await getExternalCacheDirectories();
      if (cacheDirs?.isNotEmpty ?? false) {
        APKDir = cacheDirs!.first;
        iconsCacheDir = Directory('${cacheDirs.first.path}/icons');
        if (!iconsCacheDir.existsSync()) {
          iconsCacheDir.createSync();
        }
      } else {
        APKDir = Directory('${(await getAppStorageDir()).path}/apks');
        if (!APKDir.existsSync()) {
          APKDir.createSync();
        }
        iconsCacheDir = Directory('${(await getAppStorageDir()).path}/icons');
        if (!iconsCacheDir.existsSync()) {
          iconsCacheDir.createSync();
        }
      }
      if (!isBg) {
        // Load Apps into memory (in background processes, this is done later instead of in the constructor)
        await loadApps();
        // Delete any partial APKs (if safe to do so)
        final cutoff = DateTime.now().subtract(const Duration(days: 7));
        APKDir.listSync()
            .where((element) => element.statSync().modified.isBefore(cutoff))
            .forEach((partialApk) {
              if (!areDownloadsRunning()) {
                partialApk.delete(recursive: true);
              }
            });
      }
    }();
  }

  Future<File> handleAPKIDChange(
    App app,
    PackageInfo newInfo,
    File downloadedFile,
    String downloadUrl,
  ) async {
    // If the APK package ID is different from the App ID, it is either new (using a placeholder ID) or the ID has changed
    // The former case should be handled (give the App its real ID), the latter is a security issue
    final isTempIdBool = isTempId(app);
    if (app.id != newInfo.packageName) {
      if (apps[app.id] != null && !isTempIdBool && !app.allowIdChange) {
        throw IDChangedError(newInfo.packageName!);
      }
      final idChangeWasAllowed = app.allowIdChange;
      app.allowIdChange = false;
      final originalAppId = app.id;
      app.id = newInfo.packageName!;
      downloadedFile = downloadedFile.renameSync(
        '${downloadedFile.parent.path}/${app.id}-${downloadUrl.hashCode}.${downloadedFile.path.split('.').last}',
      );
      if (apps[originalAppId] != null) {
        await removeApps([originalAppId]);
        await saveApps([
          app,
        ], onlyIfExists: !isTempIdBool && !idChangeWasAllowed);
      }
    }
    return downloadedFile;
  }

  Future<void> updatePendingRepoRename(String appId, String? newUrl) async {
    if (apps.containsKey(appId)) {
      apps[appId]!.app.pendingRepoRenameUrl = newUrl;
      await saveApps([apps[appId]!.app]);
    }
  }

  Future<void> acceptRepoRename(String appId, String newUrl) async {
    if (apps.containsKey(appId)) {
      apps[appId]!.app.url = newUrl;
      apps[appId]!.app.pendingRepoRenameUrl = null;
      await saveApps([apps[appId]!.app]);
    }
  }

  Future<Object> downloadApp(
    App app,
    BuildContext? context, {
    NotificationsProvider? notificationsProvider,
    bool useExisting = true,
  }) async {
    final notifId = DownloadNotification(app.finalName, 0).id;
    if (apps[app.id] != null) {
      apps[app.id]!.downloadProgress = 0;
      notifyListeners();
    }
    try {
      if (app.apkUrls.isEmpty) throw NoAPKError();
      if (app.preferredApkIndex >= app.apkUrls.length) {
        app.preferredApkIndex = app.apkUrls.length - 1;
      }
      if (app.preferredApkIndex < 0) app.preferredApkIndex = 0;
      final AppSource source = SourceProvider().getSource(
        app.url,
        overrideSource: app.overrideSource,
      );
      final additionalSettingsPlusSourceConfig = {
        ...app.additionalSettings,
        ...(await source.getSourceConfigValues(
          app.additionalSettings,
          settingsProvider,
        )),
      };
      final String downloadUrl = await source.assetUrlPrefetchModifier(
        await source.generalReqPrefetchModifier(
          app.apkUrls[app.preferredApkIndex].value,
          additionalSettingsPlusSourceConfig,
        ),
        app.url,
        additionalSettingsPlusSourceConfig,
      );
      var notif = DownloadNotification(app.finalName, 100);
      notificationsProvider?.cancel(notif.id);
      int? prevProg;
      var fileNameNoExt = '${app.id}-${downloadUrl.hashCode}';
      if (source.urlsAlwaysHaveExtension) {
        fileNameNoExt =
            '$fileNameNoExt.${app.apkUrls[app.preferredApkIndex].key.split('.').last}';
      }
      final headers = await source.getRequestHeaders(
        app.additionalSettings,
        downloadUrl,
        forAPKDownload: true,
      );
      var downloadedFile = await downloadFileWithRetry(
        downloadUrl,
        fileNameNoExt,
        source.urlsAlwaysHaveExtension,
        headers: headers,
        (double? progress) {
          final int? prog = progress?.ceil();
          if (apps[app.id] != null) {
            apps[app.id]!.downloadProgress = progress;
            notifyListeners();
          }
          notif = DownloadNotification(app.finalName, prog ?? 100);
          if (prog != null && prevProg != prog) {
            notificationsProvider?.notify(notif);
          }
          prevProg = prog;
        },
        APKDir.path,
        useExisting: useExisting,
        allowInsecure: app.additionalSettings['allowInsecure'] == true,
        logs: logs,
      );
      // Set to 90 for remaining steps, will make null in 'finally'
      if (apps[app.id] != null) {
        apps[app.id]!.downloadProgress = -1;
        notifyListeners();
        notif = DownloadNotification(app.finalName, -1);
        notificationsProvider?.notify(notif);
      }
      PackageInfo? newInfo;
      final originalAssetName = app.apkUrls[app.preferredApkIndex].key
          .toLowerCase();
      final isAPK = downloadedFile.path.toLowerCase().endsWith('.apk');
      final isXAPK = downloadedFile.path.toLowerCase().endsWith('.xapk');
      final isTarball =
          originalAssetName.endsWith('.tar.gz') ||
          originalAssetName.endsWith('.tgz') ||
          originalAssetName.endsWith('.tar.bz2') ||
          originalAssetName.endsWith('.tar.xz');
      Directory? apkDir;
      if (isAPK) {
        newInfo = await pm.getPackageArchiveInfo(
          archiveFilePath: downloadedFile.path,
        );
      } else {
        // Assume XAPK, ZIP, or tarball
        final String apkDirPath = '${downloadedFile.path}-dir';
        if (isTarball) {
          await extractTarballFile(downloadedFile.path, apkDirPath);
        } else {
          await unzipFile(downloadedFile.path, apkDirPath);
        }
        apkDir = Directory(apkDirPath);
        var apks = apkDir
            .listSync(recursive: true)
            .where((e) => e.path.toLowerCase().endsWith('.apk'))
            .toList();

        FileSystemEntity? temp;
        apks.removeWhere((element) {
          final bool res = element.uri.pathSegments.last.startsWith(app.id);
          if (res) {
            temp = element;
          }
          return res;
        });
        if (temp != null) {
          apks = [temp!, ...apks];
        }

        String? filterRegEx;
        if (isTarball &&
            app.additionalSettings['tarballedApkFilterRegEx']?.isNotEmpty ==
                true) {
          filterRegEx = app.additionalSettings['tarballedApkFilterRegEx'];
        } else if (!isTarball &&
            app.additionalSettings['zippedApkFilterRegEx']?.isNotEmpty ==
                true) {
          filterRegEx = app.additionalSettings['zippedApkFilterRegEx'];
        }
        if (filterRegEx != null) {
          final reg = RegExp(filterRegEx);
          apks.removeWhere((apk) {
            final relativePath = apk.path.substring(apkDir!.path.length + 1);
            final shouldDelete = !reg.hasMatch(relativePath);
            if (shouldDelete) {
              apk.delete();
            }
            return shouldDelete;
          });
        }

        if (apks.isEmpty) {
          throw NoAPKError();
        }

        for (var i = 0; i < apks.length; i++) {
          try {
            newInfo = await pm.getPackageArchiveInfo(
              archiveFilePath: apks[i].path,
            );
            if (newInfo != null) {
              break;
            }
          } catch (e) {
            if (i == apks.length - 1) {
              rethrow;
            }
          }
        }
      }
      if (newInfo == null) {
        downloadedFile.delete();
        throw UpdatiumError('Could not get ID from APK');
      }
      downloadedFile = await handleAPKIDChange(
        app,
        newInfo,
        downloadedFile,
        downloadUrl,
      );
      // Delete older versions of the file if any
      for (var file in downloadedFile.parent.listSync()) {
        final fn = file.path.split('/').last;
        if (fn.startsWith('${app.id}-') &&
            FileSystemEntity.isFileSync(file.path) &&
            file.path != downloadedFile.path) {
          file.delete(recursive: true);
        }
      }
      if (isAPK) {
        return DownloadedApk(app.id, downloadedFile);
      } else {
        DownloadedDirType dirType;
        if (isXAPK) {
          dirType = DownloadedDirType.XAPK;
        } else if (isTarball) {
          dirType = DownloadedDirType.TARBALL;
        } else {
          dirType = DownloadedDirType.ZIP;
        }
        return DownloadedDir(app.id, downloadedFile, apkDir!, dirType);
      }
    } finally {
      notificationsProvider?.cancel(notifId);
      if (apps[app.id] != null) {
        apps[app.id]!.downloadProgress = null;
        notifyListeners();
      }
    }
  }

  bool areDownloadsRunning() => apps.values
      .where((element) => element.downloadProgress != null)
      .isNotEmpty;

  Future<bool> canInstallSilently(App app) async {
    if (!settingsProvider.enableBackgroundUpdates) {
      return false;
    }
    if (app.additionalSettings['exemptFromBackgroundUpdates'] == true) {
      logs.add('Exempted from BG updates: ${app.id}');
      return false;
    }
    if (app.apkUrls.length > 1) {
      logs.add('Multiple APK URLs: ${app.id}');
      return false; // Manual API selection means silent install is not possible
    }

    final osInfo = await DeviceInfoPlugin().androidInfo;
    String? installerPackageName;
    try {
      installerPackageName = osInfo.version.sdkInt >= 30
          ? (await pm.getInstallSourceInfo(
              packageName: app.id,
            ))?.installingPackageName
          : (await pm.getInstallerPackageName(packageName: app.id));
    } catch (e) {
      logs.add(
        'Failed to get installed package details: ${app.id} (${e.toString()})',
      );
      return false; // App probably not installed
    }

    final int? targetSDK = (await getInstalledInfo(
      app.id,
    ))?.applicationInfo?.targetSdkVersion;
    final int requiredSDK = osInfo.version.sdkInt - 3;
    // The APK should target a new enough API
    // https://developer.android.com/reference/android/content/pm/PackageInstaller.SessionParams#setRequireUserAction(int)
    if (!(targetSDK != null && targetSDK >= requiredSDK)) {
      logs.add(
        'App currently targets API $targetSDK which is too low for background updates (requires API $requiredSDK): ${app.id}',
      );
      return false;
    }

    if (settingsProvider.useShizuku) {
      return true;
    }

    if (app.id == updatiumId) {
      return false;
    }
    if (installerPackageName != updatiumId) {
      // If we did not install the app, silent install is not possible
      return false;
    }
    if (osInfo.version.sdkInt < 31) {
      // The OS must also be new enough
      logs.add('Android SDK too old: ${osInfo.version.sdkInt}');
      return false;
    }
    return true;
  }

  Future<void> waitForUserToReturnToForeground(BuildContext context) async {
    final NotificationsProvider notificationsProvider = context
        .read<NotificationsProvider>();
    if (!isForeground) {
      await notificationsProvider.notify(
        completeInstallationNotification,
        cancelExisting: true,
      );
      while (await FGBGEvents.instance.stream.first != FGBGType.foreground) {}
      await notificationsProvider.cancel(completeInstallationNotification.id);
    }
  }

  Future<bool> canDowngradeApps() async =>
      (await getInstalledInfo('com.berdik.letmedowngrade')) != null;

  Future<void> unzipFile(String filePath, String destinationPath) async {
    await ZipFile.extractToDirectory(
      zipFile: File(filePath),
      destinationDir: Directory(destinationPath),
    );
  }

  Future<void> extractTarballFile(
    String filePath,
    String destinationPath,
  ) async {
    final bytes = await File(filePath).readAsBytes();
    List<int> decompressed;

    // Detect compression by magic bytes (file extension may be wrong after download)
    if (bytes.length >= 2 && bytes[0] == 0x1f && bytes[1] == 0x8b) {
      // gzip
      decompressed = const archive.GZipDecoder().decodeBytes(bytes);
    } else if (bytes.length >= 3 &&
        bytes[0] == 0x42 &&
        bytes[1] == 0x5a &&
        bytes[2] == 0x68) {
      // bzip2 ('BZh')
      decompressed = archive.BZip2Decoder().decodeBytes(bytes);
    } else if (bytes.length >= 6 &&
        bytes[0] == 0xfd &&
        bytes[1] == 0x37 &&
        bytes[2] == 0x7a &&
        bytes[3] == 0x58 &&
        bytes[4] == 0x5a &&
        bytes[5] == 0x00) {
      // xz
      decompressed = archive.XZDecoder().decodeBytes(bytes);
    } else {
      // Assume uncompressed tar
      decompressed = bytes;
    }

    final tarArchive = archive.TarDecoder().decodeBytes(decompressed);
    final destDir = Directory(destinationPath);
    if (!destDir.existsSync()) {
      destDir.createSync(recursive: true);
    }
    for (final file in tarArchive.files) {
      if (file.isFile) {
        final content = file.content;
        final outPath = '${destDir.path}/${file.name}';
        final outFile = File(outPath);
        outFile.createSync(recursive: true);
        outFile.writeAsBytesSync(content);
      }
    }
  }

  Future<bool> installApkDir(
    DownloadedDir dir,
    BuildContext? firstTimeWithContext, {
    bool needsBGWorkaround = false,
    bool shizukuPretendToBeGooglePlay = false,
  }) async {
    // We don't know which APKs in an XAPK or ZIP are supported by the user's device
    // So we try installing all of them and assume success if at least one installed
    // If 0 APKs installed, throw the first install error encountered
    // Obviously this approach is naive and is undesirable in many cases, needs to be improved
    var somethingInstalled = false;
    try {
      final MultiAppMultiError errors = MultiAppMultiError();
      List<File> APKFiles = [];
      for (var file
          in dir.extracted
              .listSync(recursive: true, followLinks: false)
              .whereType<File>()) {
        if (file.path.toLowerCase().endsWith('.apk')) {
          APKFiles.add(file);
        } else if (file.path.toLowerCase().endsWith('.obb')) {
          await moveObbFile(file, dir.appId);
        }
      }

      File? temp;
      APKFiles.removeWhere((element) {
        final bool res = element.uri.pathSegments.last.startsWith(dir.appId);
        if (res) {
          temp = element;
        }
        return res;
      });
      if (temp != null) {
        APKFiles = [temp!, ...APKFiles];
      }

      try {
        final wasInstalled = await installApk(
          DownloadedApk(dir.appId, APKFiles[0]),
          firstTimeWithContext,
          needsBGWorkaround: needsBGWorkaround,
          shizukuPretendToBeGooglePlay: shizukuPretendToBeGooglePlay,
          additionalAPKs: APKFiles.sublist(
            1,
          ).map((a) => DownloadedApk(dir.appId, a)).toList(),
        );
        somethingInstalled = somethingInstalled || wasInstalled;
        dir.file.delete(recursive: true);
      } catch (e) {
        logs.add('Could not install APKs from ${dir.type}: ${e.toString()}');
        errors.add(dir.appId, e, appName: apps[dir.appId]?.name);
      }
      if (errors.idsByErrorString.isNotEmpty) {
        throw errors;
      }
    } finally {
      dir.extracted.delete(recursive: true);
    }
    return somethingInstalled;
  }

  Future<bool> installApk(
    DownloadedApk file,
    BuildContext? firstTimeWithContext, {
    bool needsBGWorkaround = false,
    bool shizukuPretendToBeGooglePlay = false,
    List<DownloadedApk> additionalAPKs = const [],
  }) async {
    if (firstTimeWithContext != null) {
      await shareToAppVerifier(file, firstTimeWithContext);
    }
    final newInfo = await pm.getPackageArchiveInfo(
      archiveFilePath: file.file.path,
    );
    if (newInfo == null) {
      try {
        deleteFile(file.file);
        for (var a in additionalAPKs) {
          deleteFile(a.file);
        }
      } catch (e) {
        //
      } finally {
        throw UpdatiumError(tr('badDownload'));
      }
    }
    final PackageInfo? appInfo = await getInstalledInfo(apps[file.appId]!.app.id);
    logs.add(
      'Installing "${newInfo.packageName}" version "${newInfo.versionName}" versionCode "${newInfo.versionCode}"${appInfo != null ? ' (from existing version "${appInfo.versionName}" versionCode "${appInfo.versionCode}")' : ''}',
    );
    if (appInfo != null &&
        newInfo.versionCode! < appInfo.versionCode! &&
        !(await canDowngradeApps())) {
      if (settingsProvider.showAppDowngradeError) {
        throw DowngradeError(appInfo.versionCode!, newInfo.versionCode!);
      }
    }
    if (needsBGWorkaround) {
      // The below 'await' will never return if we are in a background process
      // To work around this, we should assume the install will be successful
      // So we update the app's installed version first as we will never get to the later code
      // We can't conditionally get rid of the 'await' as this causes install fails (BG process times out) - see #896
      // TODO: When fixed, update this function and the calls to it accordingly
      apps[file.appId]!.app.installedVersion =
          apps[file.appId]!.app.latestVersion;
      await saveApps([
        apps[file.appId]!.app,
      ], attemptToCorrectInstallStatus: false);
    }
    int? code;
    if (!settingsProvider.useShizuku) {
      final allAPKs = [file.file.path];
      allAPKs.addAll(additionalAPKs.map((a) => a.file.path));
      code = await AndroidPackageInstaller.installApk(
        apkFilePath: allAPKs.join(','),
      );
    } else {
      code = await ShizukuApkInstaller().installAPK(
        file.file.uri.toString(),
        shizukuPretendToBeGooglePlay ? 'com.android.vending' : '',
      );
    }
    bool installed = false;
    if (code != null && code != 0 && code != 3) {
      try {
        deleteFile(file.file);
      } catch (e) {
        //
      } finally {
        throw InstallError(code);
      }
    } else if (code == 0) {
      installed = true;
      apps[file.appId]!.app.installedVersion =
          apps[file.appId]!.app.latestVersion;
      file.file.delete(recursive: true);
    }
    await saveApps([apps[file.appId]!.app]);
    return installed;
  }

  Future<void> shareToAppVerifier(
    DownloadedApk file,
    BuildContext context,
  ) async {
    if (!settingsProvider.beforeNewInstallsShareToAppVerifier) return;
    if (await getInstalledInfo('dev.soupslurpr.appverifier') == null) return;
    final XFile f = XFile.fromData(
      file.file.readAsBytesSync(),
      mimeType: 'application/vnd.android.package-archive',
    );
    Fluttertoast.showToast(
      msg: tr('appVerifierInstructionToast'),
      toastLength: Toast.LENGTH_LONG,
    );
    await SharePlus.instance.share(ShareParams(files: [f]));
  }

  Future<String> getStorageRootPath() async {
    return '/${(await getAppStorageDir()).uri.pathSegments.sublist(0, 3).join('/')}';
  }

  Future<void> moveObbFile(File file, String appId) async {
    if (!file.path.toLowerCase().endsWith('.obb')) return;

    // TODO: Does not support Android 11+
    if ((await DeviceInfoPlugin().androidInfo).version.sdkInt <= 29) {
      await Permission.storage.request();
    }

    final String obbDirPath = '${await getStorageRootPath()}/Android/obb/$appId';
    Directory(obbDirPath).createSync(recursive: true);

    final String obbFileName = file.path.split('/').last;
    await file.copy('$obbDirPath/$obbFileName');
  }

  void uninstallApp(String appId) async {
    final intent = AndroidIntent(
      action: 'android.intent.action.DELETE',
      data: 'package:$appId',
      flags: <int>[Flag.FLAG_ACTIVITY_NEW_TASK],
      package: 'vnd.android.package-archive',
    );
    await intent.launch();
  }

  Future<MapEntry<String, String>?> confirmAppFileUrl(
    App app,
    BuildContext? context,
    bool pickAnyAsset, {
    bool evenIfSingleChoice = false,
  }) async {
    var urlsToSelectFrom = app.apkUrls;
    if (pickAnyAsset) {
      urlsToSelectFrom = [...urlsToSelectFrom, ...app.otherAssetUrls];
    }
    // If the App has more than one APK, the user should pick one (if context provided)
    MapEntry<String, String>? appFileUrl =
        urlsToSelectFrom[app.preferredApkIndex >= 0
            ? app.preferredApkIndex
            : 0];
    // When picking any asset, use the APK filter regex to pre-select the best matching
    // asset by default, without hiding other assets from the user.
    if (pickAnyAsset &&
        app.additionalSettings['apkFilterRegEx'] is String &&
        (app.additionalSettings['apkFilterRegEx'] as String).isNotEmpty) {
      final matching = filterApks(
        urlsToSelectFrom,
        app.additionalSettings['apkFilterRegEx'],
        app.additionalSettings['invertAPKFilter'] == true,
      );
      if (matching.isNotEmpty) {
        appFileUrl = matching.first;
      }
    }
    // get device supported architecture
    final List<String> archs = (await DeviceInfoPlugin().androidInfo).supportedAbis;

    if ((urlsToSelectFrom.length > 1 || evenIfSingleChoice) &&
        context != null) {
      appFileUrl = await showDialog(
        // ignore: use_build_context_synchronously
        context: context,
        builder: (BuildContext ctx) {
          return AppFilePicker(
            app: app,
            initVal: appFileUrl,
            archs: archs,
            pickAnyAsset: pickAnyAsset,
          );
        },
      );
    }
    String? getHost(String url) {
      if (url == 'placeholder') {
        return null;
      }
      final temp = Uri.parse(url).host.split('.');
      return temp.sublist(temp.length - 2).join('.');
    }

    // If the picked APK comes from an origin different from the source, get user confirmation (if context provided)
    if (appFileUrl != null &&
        ![
          getHost(app.url),
          'placeholder',
        ].contains(getHost(appFileUrl.value)) &&
        context != null) {
      if (!(settingsProvider.hideAPKOriginWarning) &&
          await showDialog(
                // ignore: use_build_context_synchronously
                context: context,
                builder: (BuildContext ctx) {
                  return APKOriginWarningDialog(
                    sourceUrl: app.url,
                    apkUrl: appFileUrl!.value,
                  );
                },
              ) !=
              true) {
        appFileUrl = null;
      }
    }
    return appFileUrl;
  }

  // Filters app IDs into those that can be installed and those that are track-only,
  // refreshing stale data and confirming file URLs before returning.
  Future<(List<String>, List<String>)> resolveAppsToInstall(
    List<String> appIds,
    BuildContext? context,
  ) async {
    final List<String> appsToInstall = [];
    final List<String> trackOnlyAppsToUpdate = [];
    for (var id in appIds) {
      if (apps[id] == null) {
        throw UpdatiumError(tr('appNotFound'));
      }
      MapEntry<String, String>? apkUrl;
      final trackOnly = apps[id]!.app.additionalSettings['trackOnly'] == true;
      final refreshBeforeDownload =
          apps[id]!.app.additionalSettings['refreshBeforeDownload'] == true ||
          apps[id]!.app.apkUrls.isNotEmpty &&
              apps[id]!.app.apkUrls.first.value == 'placeholder';
      if (refreshBeforeDownload) {
        await checkUpdate(apps[id]!.app.id);
      }
      if (!trackOnly) {
        // ignore: use_build_context_synchronously
        apkUrl = await confirmAppFileUrl(apps[id]!.app, context, false);
      }
      if (apkUrl != null) {
        final url = apkUrl.value;
        final int urlInd = apps[id]!.app.apkUrls.indexWhere((e) => e.value == url);
        if (urlInd >= 0 && urlInd != apps[id]!.app.preferredApkIndex) {
          apps[id]!.app.preferredApkIndex = urlInd;
          await saveApps([apps[id]!.app]);
        }
        if (context != null || await canInstallSilently(apps[id]!.app)) {
          appsToInstall.add(id);
        }
      }
      if (trackOnly) {
        trackOnlyAppsToUpdate.add(id);
      }
    }
    return (appsToInstall, trackOnlyAppsToUpdate);
  }

  // Given a list of AppIds, uses stored info about the apps to download APKs and install them
  // If the APKs can be installed silently, they are
  // If no BuildContext is provided, apps that require user interaction are ignored
  // If user input is needed and the App is in the background, a notification is sent to get the user's attention
  // Returns an array of Ids for Apps that were successfully downloaded, regardless of installation result
  Future<List<String>> downloadAndInstallLatestApps(
    List<String> appIds,
    BuildContext? context, {
    NotificationsProvider? notificationsProvider,
    bool forceParallelDownloads = false,
    bool useExisting = true,
  }) async {
    notificationsProvider =
        notificationsProvider ?? context?.read<NotificationsProvider>();

    var (appsToInstall, trackOnlyAppsToUpdate) = await resolveAppsToInstall(
      appIds,
      context,
    );

    // Mark all specified track-only apps as latest
    saveApps(
      trackOnlyAppsToUpdate.map((e) {
        final a = apps[e]!.app;
        a.installedVersion = a.latestVersion;
        return a;
      }).toList(),
    );

    // Prepare to download+install Apps
    final MultiAppMultiError errors = MultiAppMultiError();
    final List<String> installedIds = [];

    // Move Updatium to the end of the line (let all other apps update first)
    appsToInstall = moveStrToEnd(
      appsToInstall,
      updatiumId,
      strB: updatiumTempId,
    );
    appsToInstall = moveStrToEnd(appsToInstall, '$updatiumId.fdroid');

    Future<void> installFn(
      String id,
      bool willBeSilent,
      DownloadedApk? downloadedFile,
      DownloadedDir? downloadedDir,
    ) async {
      apps[id]?.downloadProgress = -1;
      notifyListeners();
      try {
        bool sayInstalled = true;
        final contextIfNewInstall = apps[id]?.installedInfo == null
            ? context
            : null;
        final bool needBGWorkaround =
            willBeSilent && context == null && !settingsProvider.useShizuku;
        final bool shizukuPretendToBeGooglePlay =
            settingsProvider.shizukuPretendToBeGooglePlay ||
            apps[id]!.app.additionalSettings['shizukuPretendToBeGooglePlay'] ==
                true;
        if (downloadedFile != null) {
          if (needBGWorkaround) {
            // ignore: use_build_context_synchronously
            installApk(
              downloadedFile,
              contextIfNewInstall,
              needsBGWorkaround: true,
              shizukuPretendToBeGooglePlay: shizukuPretendToBeGooglePlay,
            );
          } else {
            // ignore: use_build_context_synchronously
            sayInstalled = await installApk(
              downloadedFile,
              contextIfNewInstall,
              shizukuPretendToBeGooglePlay: shizukuPretendToBeGooglePlay,
            );
          }
        } else {
          if (needBGWorkaround) {
            // ignore: use_build_context_synchronously
            installApkDir(
              downloadedDir!,
              contextIfNewInstall,
              needsBGWorkaround: true,
            );
          } else {
            // ignore: use_build_context_synchronously
            sayInstalled = await installApkDir(
              downloadedDir!,
              contextIfNewInstall,
              shizukuPretendToBeGooglePlay: shizukuPretendToBeGooglePlay,
            );
          }
        }
        if (willBeSilent && context == null) {
          if (!settingsProvider.useShizuku) {
            notificationsProvider?.notify(
              SilentUpdateAttemptNotification([apps[id]!.app], id: id.hashCode),
            );
          } else {
            notificationsProvider?.notify(
              SilentUpdateNotification(
                [apps[id]!.app],
                sayInstalled,
                id: id.hashCode,
              ),
            );
          }
        }
        if (sayInstalled) {
          installedIds.add(id);
          // Dismiss the update notification since the app was successfully installed
          notificationsProvider?.cancel(UpdateNotification([]).id);
        }
      } finally {
        apps[id]?.downloadProgress = null;
        notifyListeners();
      }
    }

    Future<Map<Object?, Object?>> downloadFn(
      String id, {
      bool skipInstalls = false,
    }) async {
      bool willBeSilent = false;
      DownloadedApk? downloadedFile;
      DownloadedDir? downloadedDir;
      try {
        final downloadedArtifact =
            // ignore: use_build_context_synchronously
            await downloadApp(
              apps[id]!.app,
              context,
              notificationsProvider: notificationsProvider,
              useExisting: useExisting,
            );
        if (downloadedArtifact is DownloadedApk) {
          downloadedFile = downloadedArtifact;
        } else {
          downloadedDir = downloadedArtifact as DownloadedDir;
        }
        id = downloadedFile?.appId ?? downloadedDir!.appId;
        willBeSilent = await canInstallSilently(apps[id]!.app);
        if (!settingsProvider.useShizuku) {
          if (!(await settingsProvider.getInstallPermission(enforce: false))) {
            throw UpdatiumError(tr('cancelled'));
          }
        } else {
          switch ((await ShizukuApkInstaller().checkPermission())!) {
            case 'services_not_found':
              throw UpdatiumError(tr('shizukuBinderNotFound'));
            case 'old_shizuku':
              throw UpdatiumError(tr('shizukuOld'));
            case 'old_android_with_adb':
              throw UpdatiumError(tr('shizukuOldAndroidWithADB'));
            case 'denied':
              throw UpdatiumError(tr('cancelled'));
          }
        }
        if (!willBeSilent && context != null && !settingsProvider.useShizuku) {
          // ignore: use_build_context_synchronously
          await waitForUserToReturnToForeground(context);
        }
      } catch (e) {
        errors.add(id, e, appName: apps[id]?.name);
      }
      return {
        'id': id,
        'willBeSilent': willBeSilent,
        'downloadedFile': downloadedFile,
        'downloadedDir': downloadedDir,
      };
    }

    List<Map<Object?, Object?>> downloadResults = [];
    if (forceParallelDownloads || !settingsProvider.parallelDownloads) {
      for (var id in appsToInstall) {
        downloadResults.add(await downloadFn(id));
      }
    } else {
      downloadResults = await Future.wait(
        appsToInstall.map((id) => downloadFn(id, skipInstalls: true)),
      );
    }
    for (var res in downloadResults) {
      if (!errors.appIdNames.containsKey(res['id'])) {
        try {
          await installFn(
            res['id'] as String,
            res['willBeSilent'] as bool,
            res['downloadedFile'] as DownloadedApk?,
            res['downloadedDir'] as DownloadedDir?,
          );
        } catch (e) {
          final id = res['id'] as String;
          errors.add(id, e, appName: apps[id]?.name);
        }
      }
    }

    if (errors.idsByErrorString.isNotEmpty) {
      throw errors;
    }

    return installedIds;
  }

  Future<List<String>> downloadAppAssets(
    List<String> appIds,
    BuildContext context, {
    bool forceParallelDownloads = false,
  }) async {
    final NotificationsProvider notificationsProvider = context
        .read<NotificationsProvider>();
    final List<MapEntry<MapEntry<String, String>, App>> filesToDownload = [];
    for (var id in appIds) {
      if (apps[id] == null) {
        throw UpdatiumError(tr('appNotFound'));
      }
      MapEntry<String, String>? fileUrl;
      final refreshBeforeDownload =
          apps[id]!.app.additionalSettings['refreshBeforeDownload'] == true ||
          apps[id]!.app.apkUrls.isNotEmpty &&
              apps[id]!.app.apkUrls.first.value == 'placeholder';
      if (refreshBeforeDownload) {
        await checkUpdate(apps[id]!.app.id);
      }
      if (apps[id]!.app.apkUrls.isNotEmpty ||
          apps[id]!.app.otherAssetUrls.isNotEmpty) {
        // ignore: use_build_context_synchronously
        final MapEntry<String, String>? tempFileUrl = await confirmAppFileUrl(
          apps[id]!.app,
          context,
          true,
          evenIfSingleChoice: true,
        );
        if (tempFileUrl != null) {
          final s = SourceProvider().getSource(
            apps[id]!.app.url,
            overrideSource: apps[id]!.app.overrideSource,
          );
          final additionalSettingsPlusSourceConfig = {
            ...apps[id]!.app.additionalSettings,
            ...(await s.getSourceConfigValues(
              apps[id]!.app.additionalSettings,
              settingsProvider,
            )),
          };
          fileUrl = MapEntry(
            tempFileUrl.key,
            await s.assetUrlPrefetchModifier(
              await s.generalReqPrefetchModifier(
                tempFileUrl.value,
                additionalSettingsPlusSourceConfig,
              ),
              apps[id]!.app.url,
              additionalSettingsPlusSourceConfig,
            ),
          );
        }
      }
      if (fileUrl != null) {
        filesToDownload.add(MapEntry(fileUrl, apps[id]!.app));
      }
    }

    // Prepare to download+install Apps
    final MultiAppMultiError errors = MultiAppMultiError();
    final List<String> downloadedIds = [];

    Future<void> downloadFn(MapEntry<String, String> fileUrl, App app) async {
      try {
        final String downloadPath = '${await getStorageRootPath()}/Download';
        await downloadFile(
          fileUrl.value,
          fileUrl.key,
          true,
          (double? progress) {
            notificationsProvider.notify(
              DownloadNotification(fileUrl.key, progress?.ceil() ?? 0),
            );
          },
          downloadPath,
          headers: await SourceProvider()
              .getSource(app.url, overrideSource: app.overrideSource)
              .getRequestHeaders(
                app.additionalSettings,
                fileUrl.value,
                forAPKDownload: fileUrl.key.endsWith('.apk') ? true : false,
              ),
          useExisting: false,
          allowInsecure: app.additionalSettings['allowInsecure'] == true,
          logs: logs,
        );
        notificationsProvider.notify(
          DownloadedNotification(fileUrl.key, fileUrl.value),
        );
      } catch (e) {
        errors.add(fileUrl.key, e);
      } finally {
        notificationsProvider.cancel(DownloadNotification(fileUrl.key, 0).id);
      }
    }

    if (forceParallelDownloads || !settingsProvider.parallelDownloads) {
      for (var urlWithApp in filesToDownload) {
        await downloadFn(urlWithApp.key, urlWithApp.value);
      }
    } else {
      await Future.wait(
        filesToDownload.map(
          (urlWithApp) => downloadFn(urlWithApp.key, urlWithApp.value),
        ),
      );
    }
    if (errors.idsByErrorString.isNotEmpty) {
      throw errors;
    }
    return downloadedIds;
  }

  Future<Directory> getAppsDir() async {
    final Directory appsDir = Directory(
      '${(await getAppStorageDir()).path}/app_data',
    );
    if (!appsDir.existsSync()) {
      appsDir.createSync();
    }
    return appsDir;
  }

  bool isVersionDetectionPossible(AppInMemory? app) {
    if (app?.app == null) {
      return false;
    }
    final source = SourceProvider().getSource(
      app!.app.url,
      overrideSource: app.app.overrideSource,
    );
    final naiveStandardVersionDetection =
        app.app.additionalSettings['naiveStandardVersionDetection'] == true ||
        source.naiveStandardVersionDetection;
    final String? realInstalledVersion =
        app.app.additionalSettings['useVersionCodeAsOSVersion'] == true
        ? app.installedInfo?.versionCode.toString()
        : app.installedInfo?.versionName;
    final bool isHTMLWithNoVersionDetection =
        (source.runtimeType == HTML().runtimeType &&
        (app.app.additionalSettings['versionExtractionRegEx'] as String?)
                ?.isNotEmpty !=
            true);
    final bool isDirectAPKLink = source.runtimeType == DirectAPKLink().runtimeType;
    return app.app.additionalSettings['trackOnly'] != true &&
        app.app.additionalSettings['releaseDateAsVersion'] != true &&
        !isHTMLWithNoVersionDetection &&
        !isDirectAPKLink &&
        realInstalledVersion != null &&
        app.app.installedVersion != null &&
        (reconcileVersionDifferences(
                  realInstalledVersion,
                  app.app.installedVersion!,
                ) !=
                null ||
            naiveStandardVersionDetection);
  }

  // Given an App and it's on-device info...
  // Reconcile unexpected differences between its reported installed version, real installed version, and reported latest version
  App? getCorrectedInstallStatusAppIfPossible(
    App app,
    PackageInfo? installedInfo,
  ) {
    var modded = false;
    final trackOnly = app.additionalSettings['trackOnly'] == true;
    final versionDetectionIsStandard =
        app.additionalSettings['versionDetection'] == true;
    final naiveStandardVersionDetection =
        app.additionalSettings['naiveStandardVersionDetection'] == true ||
        SourceProvider()
            .getSource(app.url, overrideSource: app.overrideSource)
            .naiveStandardVersionDetection;
    final String? realInstalledVersion =
        app.additionalSettings['useVersionCodeAsOSVersion'] == true
        ? installedInfo?.versionCode.toString()
        : installedInfo?.versionName;
    // FIRST, COMPARE THE APP'S REPORTED AND REAL INSTALLED VERSIONS, WHERE ONE IS NULL
    if (installedInfo == null && app.installedVersion != null && !trackOnly) {
      // App says it's installed but isn't really (and isn't track only) - set to not installed
      app.installedVersion = null;
      modded = true;
    } else if (realInstalledVersion != null && app.installedVersion == null) {
      // App says it's not installed but really is - set to installed and use real package versionName (or versionCode if chosen)
      app.installedVersion = realInstalledVersion;
      modded = true;
    }
    // SECOND, RECONCILE DIFFERENCES BETWEEN THE APP'S REPORTED AND REAL INSTALLED VERSIONS, WHERE NEITHER IS NULL
    if (realInstalledVersion != null &&
        realInstalledVersion != app.installedVersion &&
        versionDetectionIsStandard) {
      // App's reported version and real version don't match (and it uses standard version detection)
      // If they share a standard format (and are still different under it), update the reported version accordingly
      final correctedInstalledVersion = reconcileVersionDifferences(
        realInstalledVersion,
        app.installedVersion!,
      );
      if (correctedInstalledVersion?.key == false) {
        app.installedVersion = correctedInstalledVersion!.value;
        modded = true;
      } else if (naiveStandardVersionDetection) {
        app.installedVersion = realInstalledVersion;
        modded = true;
      }
    }
    // THIRD, RECONCILE THE APP'S REPORTED INSTALLED AND LATEST VERSIONS
    if (app.installedVersion != null &&
        app.installedVersion != app.latestVersion &&
        versionDetectionIsStandard) {
      // App's reported installed and latest versions don't match (and it uses standard version detection)
      // If they share a standard format, make sure the App's reported installed version uses that format
      final correctedInstalledVersion = reconcileVersionDifferences(
        app.installedVersion!,
        app.latestVersion,
      );
      if (correctedInstalledVersion?.key == true) {
        app.installedVersion = correctedInstalledVersion!.value;
        modded = true;
      }
    }
    // FOURTH, DISABLE VERSION DETECTION IF ENABLED AND THE REPORTED/REAL INSTALLED VERSIONS ARE NOT STANDARDIZED
    if (installedInfo != null &&
        versionDetectionIsStandard &&
        !isVersionDetectionPossible(
          AppInMemory(app, null, installedInfo, null),
        )) {
      app.additionalSettings['versionDetection'] = false;
      app.installedVersion = app.latestVersion;
      logs.add('Could not reconcile version formats for: ${app.id}');
      modded = true;
    }

    return modded ? app : null;
  }

  MapEntry<bool, String>? reconcileVersionDifferences(
    String templateVersion,
    String comparisonVersion,
  ) {
    // Returns null if the versions don't share a common standard format
    // Returns <true, comparisonVersion> if they share a common format and are equal
    // Returns <false, templateVersion> if they share a common format but are not equal
    // templateVersion must fully match a standard format, while comparisonVersion can have a substring match
    final templateVersionFormats = findStandardFormatsForVersion(
      templateVersion,
      true,
    );
    var comparisonVersionFormats = findStandardFormatsForVersion(
      comparisonVersion,
      true,
    );
    if (comparisonVersionFormats.isEmpty) {
      comparisonVersionFormats = findStandardFormatsForVersion(
        comparisonVersion,
        false,
      );
    }
    final commonStandardFormats = templateVersionFormats.intersection(
      comparisonVersionFormats,
    );
    if (commonStandardFormats.isEmpty) {
      return null;
    }
    for (String pattern in commonStandardFormats) {
      if (doStringsMatchUnderRegEx(
        pattern,
        comparisonVersion,
        templateVersion,
      )) {
        return MapEntry(true, comparisonVersion);
      }
    }
    return MapEntry(false, templateVersion);
  }

  bool doStringsMatchUnderRegEx(String pattern, String value1, String value2) {
    final r = RegExp(pattern);
    final m1 = r.firstMatch(value1);
    final m2 = r.firstMatch(value2);
    return m1 != null && m2 != null
        ? value1.substring(m1.start, m1.end) ==
              value2.substring(m2.start, m2.end)
        : false;
  }

  Future<void> loadApps({String? singleId}) async {
    while (loadingApps) {
      await Future.delayed(const Duration(microseconds: 1));
    }
    loadingApps = true;
    notifyListeners();
    final sp = SourceProvider();
    final List<List<String>> errors = [];
    final installedAppsData = await getAllInstalledInfo();
    final List<String> removedAppIds = [];
    await Future.wait(
      (await getAppsDir()) // Parse Apps from JSON
          .listSync()
          .map((item) async {
            App? app;
            if (item.path.toLowerCase().endsWith('.json') &&
                (singleId == null ||
                    item.path.split('/').last.toLowerCase() ==
                        '${singleId.toLowerCase()}.json')) {
              try {
                app = App.fromJson(
                  jsonDecode(File(item.path).readAsStringSync()),
                );
              } catch (err) {
                if (err is FormatException) {
                  logs.add(
                    'Corrupt JSON when loading App (will be ignored): $err',
                  );
                  item.renameSync('${item.path}.corrupt');
                } else {
                  rethrow;
                }
              }
            }
            if (app != null) {
              // Save the app to the in-memory list without grabbing any OS info first
              apps.update(
                app.id,
                (value) => AppInMemory(
                  app!,
                  value.downloadProgress,
                  value.installedInfo,
                  value.icon,
                ),
                ifAbsent: () => AppInMemory(app!, null, null, null),
              );
              notifyListeners();
              try {
                // Try getting the app's source to ensure no invalid apps get loaded
                sp.getSource(app.url, overrideSource: app.overrideSource);
                // If the app is installed, grab its OS data and reconcile install statuses
                PackageInfo? installedInfo;
                try {
                  installedInfo = installedAppsData.firstWhere(
                    (i) => i.packageName == app!.id,
                  );
                } catch (e) {
                  // If the app isn't installed the above throws an error
                }
                // Reconcile differences between the installed and recorded install info
                final moddedApp = getCorrectedInstallStatusAppIfPossible(
                  app,
                  installedInfo,
                );
                if (moddedApp != null) {
                  app = moddedApp;
                  // Note the app ID if it was uninstalled externally
                  if (moddedApp.installedVersion == null) {
                    removedAppIds.add(moddedApp.id);
                  }
                }
                // Update the app in memory with install info and corrections
                apps.update(
                  app.id,
                  (value) => AppInMemory(
                    app!,
                    value.downloadProgress,
                    installedInfo,
                    value.icon,
                  ),
                  ifAbsent: () => AppInMemory(app!, null, installedInfo, null),
                );
                notifyListeners();
              } catch (e) {
                errors.add([app!.id, app.finalName, e.toString()]);
              }
            }
          }),
    );
    if (errors.isNotEmpty) {
      removeApps(errors.map((e) => e[0]).toList());
      NotificationsProvider().notify(
        AppsRemovedNotification(errors.map((e) => [e[1], e[2]]).toList()),
      );
    }
    // Delete externally uninstalled Apps if needed
    if (removedAppIds.isNotEmpty &&
        settingsProvider.removeOnExternalUninstall) {
      await removeApps(removedAppIds);
    }
    loadingApps = false;
    notifyListeners();
  }

  Future<void> updateAppIcon(String? appId, {bool ignoreCache = false}) async {
    if (apps[appId]?.icon == null) {
      final cachedIcon = File('${iconsCacheDir.path}/$appId.png');
      final alreadyCached = cachedIcon.existsSync() && !ignoreCache;
      final icon = alreadyCached
          ? (await cachedIcon.readAsBytes())
          : (await apps[appId]?.installedInfo?.applicationInfo?.getAppIcon());
      if (icon != null && !alreadyCached) {
        cachedIcon.writeAsBytes(icon.toList());
      }
      if (icon != null) {
        apps.update(
          apps[appId]!.app.id,
          (value) => AppInMemory(
            apps[appId]!.app,
            value.downloadProgress,
            value.installedInfo,
            icon,
          ),
          ifAbsent: () => AppInMemory(
            apps[appId]!.app,
            null,
            apps[appId]?.installedInfo,
            icon,
          ),
        );
      }
    }
  }

  Future<void> saveApps(
    List<App> apps, {
    bool attemptToCorrectInstallStatus = true,
    bool onlyIfExists = true,
  }) async {
    await Future.wait(
      apps.map((a) async {
        var app = a.deepCopy();
        final PackageInfo? info = await getInstalledInfo(app.id);
        final icon = await info?.applicationInfo?.getAppIcon();
        app.name = await (info?.applicationInfo?.getAppLabel()) ?? app.name;
        if (attemptToCorrectInstallStatus) {
          app = getCorrectedInstallStatusAppIfPossible(app, info) ?? app;
        }
        if (!onlyIfExists || this.apps.containsKey(app.id)) {
          final String filePath = '${(await getAppsDir()).path}/${app.id}.json';
          File(
            '$filePath.tmp',
          ).writeAsStringSync(jsonEncode(app.toJson())); // #2089
          File('$filePath.tmp').renameSync(filePath);
        }
        try {
          this.apps.update(
            app.id,
            (value) => AppInMemory(app, value.downloadProgress, info, icon),
            ifAbsent: onlyIfExists
                ? null
                : () => AppInMemory(app, null, info, icon),
          );
        } catch (e) {
          if (e is! ArgumentError || e.name != 'key') {
            rethrow;
          }
        }
      }),
    );
    notifyListeners();
    export(isAuto: true);
  }

  Future<void> removeApps(List<String> appIds) async {
    final apkFiles = APKDir.listSync();
    await Future.wait(
      appIds.map((appId) async {
        final File file = File('${(await getAppsDir()).path}/$appId.json');
        if (file.existsSync()) {
          deleteFile(file);
        }
        apkFiles
            .where(
              (element) => element.path.split('/').last.startsWith('$appId-'),
            )
            .forEach((element) {
              element.delete(recursive: true);
            });
        if (apps.containsKey(appId)) {
          apps.remove(appId);
        }
      }),
    );
    if (appIds.isNotEmpty) {
      notifyListeners();
      export(isAuto: true);
    }
  }

  Future<bool> removeAppsWithModal(BuildContext context, List<App> apps) async {
    final showUninstallOption = apps
        .where(
          (a) =>
              a.installedVersion != null &&
              a.additionalSettings['trackOnly'] != true,
        )
        .isNotEmpty;
    final values = await showDialog(
      context: context,
      builder: (BuildContext ctx) {
        return GeneratedFormModal(
          primaryActionColour: Theme.of(context).colorScheme.error,
          title: plural('removeAppQuestion', apps.length),
          items: !showUninstallOption
              ? []
              : [
                  [
                    GeneratedFormSwitch(
                      'rmAppEntry',
                      label: tr('removeFromUpdatium'),
                      defaultValue: true,
                    ),
                  ],
                  [
                    GeneratedFormSwitch(
                      'uninstallApp',
                      label: tr('uninstallFromDevice'),
                    ),
                  ],
                ],
          initValid: true,
        );
      },
    );
    if (values != null) {
      final bool uninstall = values['uninstallApp'] == true && showUninstallOption;
      final bool remove = values['rmAppEntry'] == true || !showUninstallOption;
      if (uninstall) {
        for (var i = 0; i < apps.length; i++) {
          if (apps[i].installedVersion != null) {
            uninstallApp(apps[i].id);
            apps[i].installedVersion = null;
          }
        }
        await saveApps(apps, attemptToCorrectInstallStatus: false);
      }
      if (remove) {
        await removeApps(apps.map((e) => e.id).toList());
      }
      return uninstall || remove;
    }
    return false;
  }

  Future<void> openAppSettings(String appId) async {
    final AndroidIntent intent = AndroidIntent(
      action: 'action_application_details_settings',
      data: 'package:$appId',
    );
    await intent.launch();
  }

  void addMissingCategories(SettingsProvider settingsProvider) {
    final cats = settingsProvider.categories;
    apps.forEach((key, value) {
      for (var c in value.app.categories) {
        if (!cats.containsKey(c)) {
          cats[c] = generateRandomLightColor().toARGB32();
        }
      }
    });
    settingsProvider.setCategories(cats, appsProvider: this);
  }

  Future<App?> checkUpdate(String appId) async {
    final App currentApp = apps[appId]!.app;
    // Pause update checks until the user resolves a pending repo rename.
    if (currentApp.hasPendingRepoRename) {
      return null;
    }
    final SourceProvider sourceProvider = SourceProvider();
    final App newApp = await sourceProvider.getApp(
      sourceProvider.getSource(
        currentApp.url,
        overrideSource: currentApp.overrideSource,
      ),
      currentApp.url,
      currentApp.additionalSettings,
      currentApp: currentApp,
    );
    if (currentApp.preferredApkIndex < newApp.apkUrls.length) {
      newApp.preferredApkIndex = currentApp.preferredApkIndex;
    }
    await saveApps([newApp]);
    return newApp.latestVersion != currentApp.latestVersion ? newApp : null;
  }

  List<String> getAppsSortedByUpdateCheckTime({
    DateTime? ignoreAppsCheckedAfter,
    bool onlyCheckInstalledOrTrackOnlyApps = false,
  }) {
    final List<String> appIds = apps.values
        .where(
          (app) =>
              app.app.lastUpdateCheck == null ||
              ignoreAppsCheckedAfter == null ||
              app.app.lastUpdateCheck!.isBefore(ignoreAppsCheckedAfter),
        )
        .where((app) {
          if (!onlyCheckInstalledOrTrackOnlyApps) {
            return true;
          } else {
            return app.app.installedVersion != null ||
                app.app.additionalSettings['trackOnly'] == true;
          }
        })
        .map((e) => e.app.id)
        .toList();
    appIds.sort(
      (a, b) =>
          (apps[a]!.app.lastUpdateCheck ??
                  DateTime.fromMicrosecondsSinceEpoch(0))
              .compareTo(
                apps[b]!.app.lastUpdateCheck ??
                    DateTime.fromMicrosecondsSinceEpoch(0),
              ),
    );
    return appIds;
  }

  Future<List<App>> checkUpdates({
    DateTime? ignoreAppsCheckedAfter,
    bool throwErrorsForRetry = false,
    List<String>? specificIds,
    SettingsProvider? sp,
  }) async {
    final SettingsProvider settingsProvider = sp ?? this.settingsProvider;
    final List<App> updates = [];
    final MultiAppMultiError errors = MultiAppMultiError();
    if (!gettingUpdates) {
      gettingUpdates = true;
      try {
        List<String> appIds = getAppsSortedByUpdateCheckTime(
          ignoreAppsCheckedAfter: ignoreAppsCheckedAfter,
          onlyCheckInstalledOrTrackOnlyApps:
              settingsProvider.onlyCheckInstalledOrTrackOnlyApps,
        );
        if (specificIds != null) {
          appIds = appIds.where((aId) => specificIds.contains(aId)).toList();
        }
        await Future.wait(
          appIds.map((appId) async {
            App? newApp;
            try {
              newApp = await checkUpdate(appId);
            } catch (e) {
              if ((e is RateLimitError || e is SocketException) &&
                  throwErrorsForRetry) {
                rethrow;
              }
              if (e is RepositoryRenamedError) {
                await updatePendingRepoRename(appId, e.newUrl);
              } else {
                errors.add(appId, e, appName: apps[appId]?.name);
              }
            }
            if (newApp != null) {
              updates.add(newApp);
            }
          }),
          eagerError: true,
        );
      } finally {
        gettingUpdates = false;
      }
    }
    if (errors.idsByErrorString.isNotEmpty) {
      final res = <String, dynamic>{};
      res['errors'] = errors;
      res['updates'] = updates;
      throw res;
    }
    return updates;
  }

  List<String> findExistingUpdates({
    bool installedOnly = false,
    bool nonInstalledOnly = false,
  }) {
    final List<String> updateAppIds = [];
    final List<String> appIds = apps.keys.toList();
    for (int i = 0; i < appIds.length; i++) {
      final App app = apps[appIds[i]]!.app;
      if (app.installedVersion != app.latestVersion &&
          (!installedOnly || !nonInstalledOnly)) {
        if ((app.installedVersion == null &&
                (nonInstalledOnly || !installedOnly) ||
            (app.installedVersion != null &&
                (installedOnly || !nonInstalledOnly)))) {
          updateAppIds.add(app.id);
        }
      }
    }
    return updateAppIds;
  }

  Map<String, dynamic> generateExportJSON({
    List<String>? appIds,
    int? overrideExportSettings,
  }) {
    final Map<String, dynamic> finalExport = {};
    finalExport['apps'] = apps.values
        .where((e) {
          if (appIds == null) {
            return true;
          } else {
            return appIds.contains(e.app.id);
          }
        })
        .map((e) => e.app.toJson())
        .toList();
    int shouldExportSettings = settingsProvider.exportSettings;
    if (overrideExportSettings != null) {
      shouldExportSettings = overrideExportSettings;
    }
    if (shouldExportSettings > 0) {
      final settingsValueKeys = settingsProvider.prefs?.getKeys().toSet();
      if (shouldExportSettings < 2) {
        settingsValueKeys?.removeWhere((k) => k.endsWith('-creds'));
      }
      finalExport['settings'] = Map<String, Object?>.fromEntries(
        (settingsValueKeys
                ?.map((key) => MapEntry(key, settingsProvider.prefs?.get(key)))
                .toList()) ??
            [],
      );
    }
    return finalExport;
  }

  Future<String?> export({
    bool pickOnly = false,
    isAuto = false,
    SettingsProvider? sp,
  }) async {
    final SettingsProvider settingsProvider = sp ?? this.settingsProvider;
    var exportDir = await settingsProvider.getExportDir();
    if (isAuto) {
      if (settingsProvider.autoExportOnChanges != true) {
        return null;
      }
      if (exportDir == null) {
        return null;
      }
      final files = await saf
          .listFiles(exportDir, columns: [saf.DocumentFileColumn.id])
          .where((f) => f.uri.pathSegments.last.endsWith('-auto.json'))
          .toList();
      if (files.isNotEmpty) {
        for (var f in files) {
          saf.delete(f.uri);
        }
      }
    }
    if (exportDir == null || pickOnly) {
      await settingsProvider.pickExportDir();
      exportDir = await settingsProvider.getExportDir();
    }
    if (exportDir == null) {
      return null;
    }
    String? returnPath;
    if (!pickOnly) {
      const encoder = JsonEncoder.withIndent('    ');
      final Map<String, dynamic> finalExport = generateExportJSON();
      final result = await saf.createFile(
        exportDir,
        displayName:
            '${tr('updatiumExportHyphenatedLowercase')}-${DateTime.now().toIso8601String().replaceAll(':', '-')}${isAuto ? '-auto' : ''}.json',
        mimeType: 'application/json',
        bytes: Uint8List.fromList(utf8.encode(encoder.convert(finalExport))),
      );
      if (result == null) {
        throw UpdatiumError(tr('unexpectedError'));
      }
      returnPath = exportDir.pathSegments
          .join('/')
          .replaceFirst('tree/primary:', '/');
    }
    return returnPath;
  }

  Future<MapEntry<List<App>, bool>> import(String appsJSON) async {
    final decodedJSON = jsonDecode(appsJSON);
    final newFormat = decodedJSON is! List;
    final List<App> importedApps =
        ((newFormat ? decodedJSON['apps'] : decodedJSON) as List<dynamic>)
            .map((e) => App.fromJson(e))
            .toList();
    while (loadingApps) {
      await Future.delayed(const Duration(microseconds: 1));
    }
    for (App a in importedApps) {
      final installedInfo = await getInstalledInfo(a.id, printErr: false);
      a.installedVersion =
          a.additionalSettings['useVersionCodeAsOSVersion'] == true
          ? installedInfo?.versionCode.toString()
          : installedInfo?.versionName;
    }
    await saveApps(importedApps, onlyIfExists: false);
    notifyListeners();
    if (newFormat && decodedJSON['settings'] != null) {
      final settingsMap = decodedJSON['settings'] as Map<String, Object?>;
      settingsMap.forEach((key, value) {
        if (value is int) {
          settingsProvider.prefs?.setInt(key, value);
        } else if (value is double) {
          settingsProvider.prefs?.setDouble(key, value);
        } else if (value is bool) {
          settingsProvider.prefs?.setBool(key, value);
        } else if (value is List) {
          settingsProvider.prefs?.setStringList(
            key,
            value.map((e) => e as String).toList(),
          );
        } else {
          settingsProvider.prefs?.setString(key, value as String);
        }
      });
    }
    return MapEntry<List<App>, bool>(
      importedApps,
      newFormat && decodedJSON['settings'] != null,
    );
  }

  @override
  void dispose() {
    _disposed = true;
    foregroundSubscription?.cancel();
    _autoExportDebounce?.cancel();
    _eventSubscription?.cancel();
    refreshProgress.dispose();
    super.dispose();
  }

  Future<List<List<String>>> addAppsByURL(
    List<String> urls, {
    AppSource? sourceOverride,
  }) async {
    final List<dynamic> results = await SourceProvider().getAppsByURLNaive(
      urls,
      alreadyAddedUrls: apps.values.map((e) => e.app.url).toSet(),
      sourceOverride: sourceOverride,
    );
    final List<App> pps = results[0];
    final Map<String, dynamic> errorsMap = results[1];
    for (var app in pps) {
      if (apps.containsKey(app.id)) {
        errorsMap.addAll({app.id: 'appAlreadyAdded'.t()});
      } else {
        await saveApps([app], onlyIfExists: false);
      }
    }
    final List<List<String>> errors = errorsMap.keys
        .map((e) => [e, errorsMap[e].toString()])
        .toList();
    return errors;
  }
}

class AppFilePicker extends StatefulWidget {
  const AppFilePicker({
    super.key,
    required this.app,
    this.initVal,
    this.archs,
    this.pickAnyAsset = false,
  });

  final App app;
  final MapEntry<String, String>? initVal;
  final List<String>? archs;
  final bool pickAnyAsset;

  @override
  State<AppFilePicker> createState() => _AppFilePickerState();
}

class _AppFilePickerState extends State<AppFilePicker> {
  MapEntry<String, String>? fileUrl;

  @override
  Widget build(BuildContext context) {
    fileUrl ??= widget.initVal;
    var urlsToSelectFrom = widget.app.apkUrls;
    if (widget.pickAnyAsset) {
      urlsToSelectFrom = [...urlsToSelectFrom, ...widget.app.otherAssetUrls];
    }
    return AlertDialog(
      scrollable: true,
      title: Text(
        widget.pickAnyAsset
            ? tr('selectX', args: [lowerCaseIfEnglish(tr('releaseAsset'))])
            : tr('pickAnAPK'),
      ),
      content: RadioGroup<String>(
        groupValue: fileUrl!.value,
        onChanged: (String? val) {
          setState(() {
            fileUrl = urlsToSelectFrom.where((e) => e.value == val).first;
          });
        },
        child: Column(
          children: [
          urlsToSelectFrom.length > 1
              ? Text(
                  tr('appHasMoreThanOnePackage', args: [widget.app.finalName]),
                )
              : const SizedBox.shrink(),
          const SizedBox(height: 16),
          ...urlsToSelectFrom.map(
            (u) => RadioListTile<String>(
              title: Text(u.key),
              value: u.value,
            ),
          ),
          if (widget.archs != null) const SizedBox(height: 16),
          if (widget.archs != null)
            Text(
              widget.archs!.length == 1
                  ? tr('deviceSupportsXArch', args: [widget.archs![0]])
                  : tr('deviceSupportsFollowingArchs') +
                        list2FriendlyString(
                          widget.archs!.map((e) => '\'$e\'').toList(),
                        ),
              style: const TextStyle(fontStyle: FontStyle.italic, fontSize: 12),
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(null);
          },
          child: Text(tr('cancel')),
        ),
        TextButton(
          onPressed: () {
            context.read<SettingsProvider>().selectionClick();
            Navigator.of(context).pop(fileUrl);
          },
          child: Text(tr('continue')),
        ),
      ],
    );
  }
}

class APKOriginWarningDialog extends StatefulWidget {
  const APKOriginWarningDialog({
    super.key,
    required this.sourceUrl,
    required this.apkUrl,
  });

  final String sourceUrl;
  final String apkUrl;

  @override
  State<APKOriginWarningDialog> createState() => _APKOriginWarningDialogState();
}

class _APKOriginWarningDialogState extends State<APKOriginWarningDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      scrollable: true,
      title: Text(tr('warning')),
      content: Text(
        tr(
          'sourceIsXButPackageFromYPrompt',
          args: [
            Uri.parse(widget.sourceUrl).host,
            Uri.parse(widget.apkUrl).host,
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(null);
          },
          child: Text(tr('cancel')),
        ),
        TextButton(
          onPressed: () {
            context.read<SettingsProvider>().selectionClick();
            Navigator.of(context).pop(true);
          },
          child: Text(tr('continue')),
        ),
      ],
    );
  }
}

/// Background updater function
///
/// @param List<MapEntry<String, int>>? toCheck: The appIds to check for updates (with the number of previous attempts made per appid) (defaults to all apps)
///
/// @param List<String>? toInstall: The appIds to attempt to update (if empty - which is the default - all pending updates are taken)
///
/// When toCheck is empty, the function is in "install mode" (else it is in "update mode").
/// In update mode, all apps in toCheck are checked for updates (in parallel).
/// If an update is available and it cannot be installed silently, the user is notified of the available update.
/// If there are any errors, we recursively call the same function with retry count for the relevant apps decremented (if zero, the user is notified).
///
/// In "install mode" (toCheck is empty): downloads and silently installs all
/// pending updates, placing Updatium last in the install queue.
Future<void> bgUpdateCheck(
  String taskId,
  Map<String, dynamic>? params, {
  LogsProvider? logs,
  NotificationsProvider? notifs,
  SettingsProvider? settings,
  bool forceAll = false,
}) async {
  final bgLogs = logs ?? LogsProvider();
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await loadTranslations();

  final LogsProvider logs = LogsProvider();
  final NotificationsProvider notificationsProvider = NotificationsProvider();
  final AppsProvider appsProvider = AppsProvider(isBg: true);
  await appsProvider.loadApps();
  await appsProvider.settingsProvider.initializeSettings();

  final netResult = await (Connectivity().checkConnectivity());
  if (netResult.contains(ConnectivityResult.none) ||
      netResult.isEmpty ||
      (netResult.contains(ConnectivityResult.vpn) && netResult.length == 1)) {
    unawaited(bgLogs.add('BG update task: No network.'));
    return;
  }

  if (!appsProvider.settingsProvider.enableBackgroundUpdates ||
      appsProvider.settingsProvider.updateInterval == 0) {
    if (!forceAll) {
      unawaited(
        bgLogs.add(
          'BG update task: Skipped (enabled=${appsProvider.settingsProvider.enableBackgroundUpdates}, '
          'interval=${appsProvider.settingsProvider.updateInterval})',
        ),
      );
      return;
    }
    unawaited(
      bgLogs.add(
        'BG update task: Running manual check despite disabled settings',
      ),
    );
  }

  final List<MapEntry<String, int>> toCheck = <MapEntry<String, int>>[
    ...(params['toCheck']
            ?.map(
              (entry) => MapEntry<String, int>(
                entry['key'] as String,
                entry['value'] as int,
              ),
            )
            .toList() ??
        appsProvider
            .getAppsSortedByUpdateCheckTime(
              onlyCheckInstalledOrTrackOnlyApps: appsProvider
                  .settingsProvider
                  .onlyCheckInstalledOrTrackOnlyApps,
              forceAll: forceAll,
            )
            .map((e) => MapEntry(e, 0))),
  ];

  final networkRestricted =
      appsProvider.settingsProvider.bgUpdatesOnWiFiOnly &&
      !netResult.contains(ConnectivityResult.wifi) &&
      !netResult.contains(ConnectivityResult.ethernet);

  final chargingRestricted =
      appsProvider.settingsProvider.bgUpdatesWhileChargingOnly &&
      (await Battery().batteryState) != BatteryState.charging;

  if (networkRestricted) {
    unawaited(bgLogs.add('BG update task: Network restriction in effect.'));
  }

  if (chargingRestricted) {
    unawaited(bgLogs.add('BG update task: Charging restriction in effect.'));
  }

  final canInstall = !networkRestricted && !chargingRestricted;
  final silentlyInstallable = <String>[];

  if (toCheck.isNotEmpty) {
    // Task is either in update mode or install mode
    // If in update mode, we check for updates.
    // We divide the results into 4 groups:
    // - toNotify - Apps with updates that the user will be notified about (can't be silently installed)
    // - toThrow - Apps with update check errors that the user will be notified about (no retry)
    // After grouping the updates, we take care of toNotify and toThrow first
    // Then we run the function again in install mode (toCheck is empty)

    final enoughTimePassed =
        appsProvider.settingsProvider.updateInterval != 0 &&
        appsProvider.settingsProvider.lastCompletedBGCheckTime
            .add(
              Duration(minutes: appsProvider.settingsProvider.updateInterval),
            )
            .isBefore(DateTime.now());
    if (!enoughTimePassed) {
      // ignore: avoid_print
      print(
        'BG update task: Too early for another check (last check was ${appsProvider.settingsProvider.lastCompletedBGCheckTime.toIso8601String()}, interval is ${appsProvider.settingsProvider.updateInterval}).',
      );
      return;
    }

    logs.add('BG update task: Started (${toCheck.length}).');

    // Init. vars.
    List<App> updates = []; // All updates found (silent and non-silent)
    final List<App> toNotify =
        []; // All non-silent updates that the user will be notified about
    final List<MapEntry<String, int>> toRetry =
        []; // All apps that got errors while checking
    var retryAfterXSeconds = 0;
    MultiAppMultiError?
    errors; // All errors including those that will lead to a retry
    final MultiAppMultiError toThrow =
        MultiAppMultiError(); // All errors that will not lead to a retry, just a notification
    final CheckingUpdatesNotification notif = CheckingUpdatesNotification(
      plural('apps', toCheck.length),
    ); // The notif. to show while checking

  try {
    unawaited(notificationsProvider.notify(notif, cancelExisting: true));
    updates = await appsProvider.checkUpdates(
      specificIds: toCheck.map((e) => e.key).toList(),
      sp: appsProvider.settingsProvider,
    );
  } catch (e) {
    if (e is CheckUpdatesException) {
      updates = e.updates;
      errors = e.errors;
      errors.rawErrors.forEach((key, err) {
        unawaited(
          logs.add(
            'BG update task: Got error on checking for $key \'${err.toString()}\'.',
          ),
        );

          final toCheckApp = toCheck.where((element) => element.key == key).first;
          if (toCheckApp.value < maxAttempts) {
            toRetry.add(MapEntry(toCheckApp.key, toCheckApp.value + 1));
            // Next task interval is based on the error with the longest retry time
            int minRetryIntervalForThisApp = err is RateLimitError
                ? (err.remainingMinutes * 60)
                : err is ClientException
                ? (15 * 60)
                : (toCheckApp.value + 1);
            if (minRetryIntervalForThisApp > maxRetryWaitSeconds) {
              minRetryIntervalForThisApp = maxRetryWaitSeconds;
            }
            if (minRetryIntervalForThisApp > retryAfterXSeconds) {
              retryAfterXSeconds = minRetryIntervalForThisApp;
            }
          } else {
            if (err is! RateLimitError) {
              toThrow.add(key, err, appName: errors?.appIdNames[key]);
            }
          }
        });
      } else {
        // We don't expect to ever get here in any situation so no need to catch (but log it in case)
        logs.add('Fatal error in BG update task: ${e.toString()}');
        rethrow;
      }
    } finally {
      notificationsProvider.cancel(notif.id);
    }

    // Filter out updates that will be installed silently (the rest go into toNotify)
    final List<App> trackOnlyToNotify = [];
    final List<App> exemptToNotify = [];
    for (var i = 0; i < updates.length; i++) {
      final canInstallSilently = await appsProvider.canInstallSilently(
        updates[i],
      );
      if (networkRestricted || chargingRestricted || !canInstallSilently) {
        if (updates[i].additionalSettings['skipUpdateNotifications'] != true) {
          logs.add(
            'BG update task notifying for ${updates[i].id} (networkRestricted $networkRestricted, chargingRestricted: $chargingRestricted, canInstallSilently: $canInstallSilently).',
          );
          if (updates[i].additionalSettings['trackOnly'] == true) {
            trackOnlyToNotify.add(updates[i]);
          } else if (
            updates[i].additionalSettings['exemptFromBackgroundUpdates'] == true) {
            exemptToNotify.add(updates[i]);
          } else {
            toNotify.add(updates[i]);
          }
        }
      }
    }

    // Send separate notifications to avoid one being cancelled
    // when the other is processed
    if (toNotify.isNotEmpty) {
      notificationsProvider.notify(UpdateNotification(toNotify));
    }
    if (trackOnlyToNotify.isNotEmpty) {
      notificationsProvider.notify(
        TrackOnlyUpdateNotification(trackOnlyToNotify),
      );
    }
    if (exemptToNotify.isNotEmpty) {
      notificationsProvider.notify(
        TrackOnlyUpdateNotification(exemptToNotify),
      );
    }

    // Send the error notifications (grouped by error string)
    if (toThrow.rawErrors.isNotEmpty) {
      for (var element in toThrow.idsByErrorString.entries) {
        notificationsProvider.notify(
          ErrorCheckingUpdatesNotification(
            errors!.errorsAppsString(element.key, element.value),
            id: Random().nextInt(10000),
          ),
        );
      }
    }
    // if there are update checks to retry, schedule a retry task
    logs.add('BG update task: Done checking for updates.');
    if (toRetry.isNotEmpty) {
      logs.add(
        'BG update task $taskId: Will retry in $retryAfterXSeconds seconds (${toRetry.length} to retry, ${toInstall.length} to install).',
      );
      return await bgUpdateCheck(taskId, {
        'toCheck': toRetry
            .map((entry) => {'key': entry.key, 'value': entry.value})
            .toList(),
      },
    );
  } else {
    // In install mode...
    // If you haven't explicitly been given updates to install, grab all available silent updates
    logs.add('BG install task: Started (${toInstall.length}).');
    if (toInstall.isEmpty && !networkRestricted && !chargingRestricted) {
      final temp = appsProvider.findExistingUpdates(installedOnly: true);
      for (var i = 0; i < temp.length; i++) {
        if (await appsProvider.canInstallSilently(
          appsProvider.apps[temp[i]]!.app,
        )) {
          toInstall.add(MapEntry(temp[i], 0));
        }
      }
    }
    if (toInstall.isNotEmpty) {
      final tempObtArr = toInstall.where(
        (element) =>
            element.key == updatiumId || element.key == '$updatiumId.fdroid',
      );
      if (tempObtArr.isNotEmpty) {
        // Move updatium to the end of the list as it must always install last
        final obt = tempObtArr.first;
        toInstall = moveStrToEndMapEntryWithCount(toInstall, obt);
      }
      // Loop through all updates and install each
      try {
        await appsProvider.downloadAndInstallLatestApps(
          toInstall.map((e) => e.key).toList(),
          null,
          notificationsProvider: notificationsProvider,
          forceParallelDownloads: true,
        );
      } catch (e) {
        if (e is MultiAppMultiError) {
          e.idsByErrorString.forEach((key, value) {
            notificationsProvider.notify(
              ErrorCheckingUpdatesNotification(e.errorsAppsString(key, value)),
            );
          });
        } else {
          // We don't expect to ever get here in any situation so no need to catch (but log it in case)
          logs.add('Fatal error in BG install task: ${e.toString()}');
          rethrow;
        }
      }
      logs.add('BG install task: Done installing updates.');
    }
  }
  appsProvider.settingsProvider.lastCompletedBGCheckTime = DateTime.now();
}
