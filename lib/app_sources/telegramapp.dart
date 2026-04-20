import 'package:simple_localization/simple_localization.dart';
import 'package:html/parser.dart';
import 'package:http/http.dart';
import 'package:updatium/providers/source_provider.dart';
import 'package:updatium/providers/source_provider.dart' as source_provider;

class TelegramApp extends AppSource {
  TelegramApp() {
    hosts = ['telegram.org'];
    name = tr('telegramapp');
  }
  @override
  String sourceSpecificStandardizeURL(String url, {bool forSelection = false}) {
    return 'https://${hosts[0]}';
  }

  @override
  Future<APKDetails> getLatestAPKDetails(
    String standardUrl,
    Map<String, dynamic> additionalSettings,
  ) async {
    Response res = await sourceRequest(
      'https://t.me/s/TAndroidAPK',
      additionalSettings,
    );
    if (res.statusCode == 200) {
      var http = parse(res.body);
      var messages = http.querySelectorAll(
        '.tgme_widget_message_text.js-message_text',
      );
      var version = messages.isNotEmpty
          ? messages.last.innerHtml.split('\n').first.trim().split(' ').first
          : null;
      if (version == null) {
        throw NoVersionError();
      }
      String? apkUrl = 'https://telegram.org/dl/android/apk';
      return APKDetails(version, [
        MapEntry<String, String>(
          'telegram-$version${source_provider.supportedApkExtensions[0]}',
          apkUrl,
        ),
      ], AppNames('Telegram', 'Telegram'));
    } else {
      throw getUpdatiumHttpError(res);
    }
  }
}
