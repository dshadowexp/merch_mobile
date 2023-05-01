import 'package:shared_preferences/shared_preferences.dart';

class PhonePreferencesData {
  static final PhonePreferencesData _phoneData =
      PhonePreferencesData._internal();
  static SharedPreferences? prefs;

  factory PhonePreferencesData() {
    return _phoneData;
  }

  PhonePreferencesData._internal();

  static Future<String?> getPref(String prefName) async {
    prefs = await SharedPreferences.getInstance();
    return prefs?.getString(prefName);
  }

  static Future setPref(String prefName, String prefValue) async {
    prefs = await SharedPreferences.getInstance();
    return await prefs?.setString(prefName, prefValue);
  }

  static Future unsetPref(String prefName) async {
    prefs = await SharedPreferences.getInstance();
    prefs?.remove(prefName);
  }
}
