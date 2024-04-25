import 'package:url_launcher/url_launcher.dart';

class AppbarServices {
  static Future<void> myLaunchUrl() async {
    final Uri url = Uri.parse('https://gemini.google.com/app');
    if (!await launchUrl(url)) {
      throw Exception('Could not launch gemini');
    }
  }
}
