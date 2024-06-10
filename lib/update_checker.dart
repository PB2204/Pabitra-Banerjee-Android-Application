import 'dart:convert';
import 'package:http/http.dart' as http;

class UpdateChecker {
  static const String currentVersion = '1.0.0';
  static const String releaseUrl = 'https://api.github.com/repos/PB2204/Pabitra-Banerjee-Android-Application/releases/latest';

  Future<String?> checkForUpdate() async {
    final response = await http.get(Uri.parse(releaseUrl));
    if (response.statusCode == 200) {
      final release = json.decode(response.body);
      final latestVersion = release['tag_name'];
      if (currentVersion != latestVersion) {
        return release['assets'][0]['browser_download_url'];
      }
    }
    return null;
  }
}
