import 'package:flutter/foundation.dart';

class Model extends ChangeNotifier {
  int _data;

  int get data => _data;

  void toggle() {
    if (_data == null) {
      _data = 42;
    } else {
      _data = null;
    }
    notifyListeners();
  }
}
