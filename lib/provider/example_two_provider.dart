import 'package:flutter/foundation.dart';

class ExampleTwoProvider with ChangeNotifier {
  double _value = 1.0;

  double get value => _value;

  void set(double val) {
    _value = val;
    notifyListeners();
  }
}
