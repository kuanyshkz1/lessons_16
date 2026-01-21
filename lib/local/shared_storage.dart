import 'package:shared_preferences/shared_preferences.dart';

class SharedStorage {
  SharedStorage._();

  static final SharedStorage _instance = SharedStorage._();
  static SharedPreferences? _sharedPreferences;

  factory SharedStorage() {
    return _instance;
  }

  static Future<void> init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  int getInt(String key) {
 
    return _sharedPreferences?.getInt(key) ?? 0;
  }


  Future<void> setInt(String key, int value) async {
    await _sharedPreferences?.setInt(key, value);
  }
}