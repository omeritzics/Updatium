// Simple test script to verify GitHub Actions artifacts integration
import 'package:updatium/app_sources/github.dart';

void main() async {
  print('Testing GitHub Actions artifacts integration...');

  // Create GitHub source instance
  final github = GitHub();

  // Test with a real repository that has GitHub Actions artifacts
  // Example: flutter/flutter (has many CI artifacts)
  const testUrl = 'https://github.com/flutter/flutter';

  try {
    print('Testing releases mode (default)...');
    final releaseDetails = await github.getLatestAPKDetails(testUrl, {
      'sourceType': 'releases',
    });
    print('✓ Releases mode works: ${releaseDetails.version}');

    print('\nTesting artifacts mode...');
    final artifactDetails = await github.getLatestAPKDetails(testUrl, {
      'sourceType': 'artifacts',
      'artifactNameFilter': '.*apk.*', // Filter for APK-like artifacts
    });
    print('✓ Artifacts mode works: ${artifactDetails.version}');
    print('  - Download URL: ${artifactDetails.apkUrls.first.value}');
    print('  - Release date: ${artifactDetails.releaseDate}');
    print('  - Changelog: ${artifactDetails.changeLog}');
  } catch (e) {
    print('✗ Test failed: $e');
    print(
      'This might be expected if the repository has no artifacts matching the filter.',
    );
  }

  print('\nTest completed!');
}
