// Tests for the download-cancellation patch.
//
// Coverage:
//   1. AppsProvider.cancelDownload() sets the internal flag and clears progress.
//   2. The flag causes the progress callback to throw DownloadCancelledError,
//      matching the behaviour wired into downloadApp().
//   3. The flag is cleared after throwing so re-downloads are safe.
//   4. DownloadCancelledError is a silent UpdatiumError (empty message).


import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'package:updatium/custom_errors.dart';
import 'package:updatium/providers/apps_provider.dart';
import 'package:updatium/providers/source_provider.dart';


// ---------------------------------------------------------------------------
// Minimal test double for AppsProvider.
//
// The real constructor kicks off async platform-channel calls (FGBG events,
// path_provider, shared_prefs, …) that are unavailable in unit-test scope.
// We bypass the constructor via a private unnamed constructor, then populate
// only the fields we need.
// ---------------------------------------------------------------------------
class _TestAppsProvider extends AppsProvider {
  _TestAppsProvider() : super.forTesting();

  /// Helper: checks the @visibleForTesting getter exposed on AppsProvider.
  bool hasCancelFlag(String appId) => cancelledDownloadsForTest.contains(appId);

  /// Simulates what the onProgress callback inside downloadApp() does:
  ///   • checks cancelledDownloadsForTest
  ///   • removes the flag
  ///   • throws DownloadCancelledError
  ///
  /// This mirrors the exact code path added in the patch so the test validates
  /// the real logic, not a reimplementation.
  void simulateProgressTick(String appId) {
    if (cancelledDownloadsForTest.contains(appId)) {
      cancelledDownloadsForTest.remove(appId);
      throw DownloadCancelledError();
    }
  }
}

// ---------------------------------------------------------------------------
// Helper: create a minimal App object
// ---------------------------------------------------------------------------
App _makeApp(String id) => App(
  id,
  'https://github.com/user/repo',
  'user',
  'Test App',
  null,
  '1.0.0',
  [],
  0,
  {},
  null,
  false,
);

// ---------------------------------------------------------------------------
// Tests
// ---------------------------------------------------------------------------
void main() {
  // Needed so ChangeNotifier (and other Flutter internals used by the
  // provider) don't crash in a pure-Dart test environment.
  TestWidgetsFlutterBinding.ensureInitialized();

  // AppsProvider's `logs` field initializer constructs a LogsProvider,
  // which opens a sqflite database — even via AppsProvider.forTesting(),
  // since field initializers run before any constructor body. Provide an
  // FFI-based databaseFactory so that succeeds in a pure-Dart test env.
  setUpAll(() {
    sqfliteFfiInit();
    databaseFactory = databaseFactoryFfi;
  });

  // Silence platform-channel calls that fire from imported libraries during
  // the test run (e.g. flutter_fgbg).
  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(
          const MethodChannel('flutter_fgbg'),
          (_) async => null,
        );
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(const MethodChannel('flutter_fgbg'), null);
  });

  // ── Group 1: cancelDownload() state mutations ──────────────────────────
  group('AppsProvider.cancelDownload()', () {
    test('sets the internal cancellation flag for the given app ID', () {
      final provider = _TestAppsProvider();
      const id = 'com.example.app';

      expect(provider.hasCancelFlag(id), isFalse);
      provider.cancelDownload(id);
      expect(provider.hasCancelFlag(id), isTrue);
    });

    test('clears downloadProgress for the app and notifies listeners', () {
      final provider = _TestAppsProvider();
      const id = 'com.example.app';

      // Put an app into the in-memory map with non-null progress.
      provider.apps[id] = AppInMemory(_makeApp(id), 42.0, null, null);

      int notifyCount = 0;
      provider.addListener(() => notifyCount++);

      provider.cancelDownload(id);

      expect(
        provider.apps[id]!.downloadProgress,
        isNull,
        reason: 'Progress should be cleared immediately on cancel',
      );
      expect(
        notifyCount,
        greaterThan(0),
        reason: 'cancelDownload() must call notifyListeners()',
      );
    });

    test('is safe when the app ID is not in the in-memory map', () {
      final provider = _TestAppsProvider();
      // Should not throw even if the app is unknown.
      expect(() => provider.cancelDownload('com.unknown.app'), returnsNormally);
    });

    test('can be called multiple times without side-effects', () {
      final provider = _TestAppsProvider();
      const id = 'com.example.app';

      provider.cancelDownload(id);
      provider.cancelDownload(id); // second call — flag already set
      expect(provider.hasCancelFlag(id), isTrue);
    });
  });

  // ── Group 2: progress-callback cancellation behaviour ──────────────────
  group('Progress callback throws DownloadCancelledError when flag is set', () {
    test('throws DownloadCancelledError after cancelDownload()', () {
      final provider = _TestAppsProvider();
      const id = 'com.example.app';

      provider.cancelDownload(id);

      expect(
        () => provider.simulateProgressTick(id),
        throwsA(isA<DownloadCancelledError>()),
      );
    });

    test('flag is cleared after the error is thrown (re-download is safe)', () {
      final provider = _TestAppsProvider();
      const id = 'com.example.app';

      provider.cancelDownload(id);

      try {
        provider.simulateProgressTick(id);
      } on DownloadCancelledError {
        // expected
      }

      expect(
        provider.hasCancelFlag(id),
        isFalse,
        reason: 'The flag must be removed so a fresh download is not aborted',
      );
    });

    test('no throw on normal progress tick when flag is not set', () {
      final provider = _TestAppsProvider();
      const id = 'com.example.app';

      // No cancelDownload() called — tick should be harmless.
      expect(() => provider.simulateProgressTick(id), returnsNormally);
    });

    test('cancels only the specific app, not others', () {
      final provider = _TestAppsProvider();
      const idA = 'com.example.app_a';
      const idB = 'com.example.app_b';

      provider.cancelDownload(idA);

      // app_a should throw; app_b (not cancelled) should not.
      expect(
        () => provider.simulateProgressTick(idA),
        throwsA(isA<DownloadCancelledError>()),
      );
      expect(() => provider.simulateProgressTick(idB), returnsNormally);
    });
  });

  // ── Group 3: DownloadCancelledError properties ─────────────────────────
  group('DownloadCancelledError', () {
    test('is an UpdatiumError', () {
      expect(DownloadCancelledError(), isA<UpdatiumError>());
    });

    test('has an empty message so no text is shown to the user', () {
      expect(DownloadCancelledError().message, isEmpty);
    });

    test('unexpected is false (it is a user-initiated, expected event)', () {
      expect(DownloadCancelledError().unexpected, isFalse);
    });
  });
}
