import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefServices {
  static String _isFirstTime = "isFirstTime";
  static Future<void> hasOpenedAppBefore() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool(_isFirstTime, false);
  }

  static Future<bool> get isFirstTime async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    bool? result = pref.getBool(_isFirstTime);
    return result ?? true;
  }
}
