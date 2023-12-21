import 'package:flutter/services.dart' show rootBundle;

Future<String> loadJsonFromAssets(String assetsPath) async {
  return await rootBundle.loadString(assetsPath);
}
