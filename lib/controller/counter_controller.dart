import 'package:lesson_16/local/shared_storage.dart';

class CounterController {
  final SharedStorage _sharedStorage = SharedStorage();

  int getCounter() {
    return _sharedStorage.getInt('counter');
  }

  void increment() {
    int current = getCounter();
    _sharedStorage.setInt('counter', current + 1);
  }

  void decrement() {
    int current = getCounter();
    _sharedStorage.setInt('counter', current - 1);
  }

  void setCounter(int value) {
    _sharedStorage.setInt('counter', value);
  }
}