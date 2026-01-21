import 'package:shared_preferences/shared_preferences.dart';

class CounterModel {
  int counter = 0;
  static const String _counterKey = 'counter';


  Future<void> loadCounter() async {
    final prefs = await SharedPreferences.getInstance();
    counter = prefs.getInt(_counterKey) ?? 0;
  }

  Future<void> saveCounter() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt(_counterKey, counter);
  }

  Future<void> increment() async {
    counter++;
    await saveCounter();
  }
}
