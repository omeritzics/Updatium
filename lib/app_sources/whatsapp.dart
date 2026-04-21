import 'package:simple_localization/simple_localization.dart';
import 'package:html/parser.dart';
import 'package:http/http.dart';
import 'package:updatium/providers/source_provider.dart';
import 'package:updatium/providers/source_provider.dart' as source_provider;

class WhatsAppApp extends AppSource {
  WhatsAppApp() {
    hosts = ['whatsapp.com'];
    name = tr('whatsapp');
  }

  @override
  String sourceSpecificStandardizeURL(String url, {bool forSelection = false}) {
    return 'https://${hosts[0]}/android';
  }

  @override
  Future<APKDetails> getLatestAPKDetails(
    String standardUrl,
    Map<String, dynamic> additionalSettings,
  ) async {
    Response res = await sourceRequest(
      'https://www.whatsapp.com/android',
      additionalSettings,
    );
    if (res.statusCode == 200) {
      var http = parse(res.body);
      var version = '';
      String? apkUrl;
      
      // Look for the APK download link in the page
      var apkLink = http.querySelector('a[href*=".apk"]');
      if (apkLink != null) {
        var href = apkLink.attributes['href'];
        if (href != null) {
          apkUrl = href;
          // Try to extract version from URL or use the CDN URL pattern
          if (href.contains('whatsapp.net')) {
            // Use the CDN URL pattern
            apkUrl = href;
          }
        }
      }
      
      // If no APK link found, use the known CDN URL pattern
      if (apkUrl == null) {
        apkUrl = 'https://scontent.whatsapp.net/v/t61.25591-34/10000000_2369797936868259_1705562541720575021_n.apk/WhatsApp.apk';
      }
      
      // Try to extract version from the page content
      var versionElement = http.querySelector('.version-number, [data-version]');
      if (versionElement != null) {
        version = versionElement.text.trim();
      }
      
      // If version not found, try to extract from the APK URL
      if (version.isEmpty) {
        var versionMatch = RegExp(r'(\d+\.\d+\.\d+)').firstMatch(apkUrl);
        if (versionMatch != null) {
          version = versionMatch.group(1) ?? '';
        }
      }
      
      // Final fallback - if still no version, use the version code from URL
      if (version.isEmpty) {
        var versionCodeMatch = RegExp(r'_(\d+)_').firstMatch(apkUrl);
        if (versionCodeMatch != null) {
          version = versionCodeMatch.group(1) ?? '';
        }
      }
      
      if (version.isEmpty) {
        throw NoVersionError();
      }
      
      return APKDetails(version, [
        MapEntry<String, String>(
          'WhatsApp-$version${source_provider.supportedApkExtensions[0]}',
          apkUrl,
        ),
      ], AppNames('Meta', 'WhatsApp'));
    } else {
      throw getUpdatiumHttpError(res);
    }
  }
}
