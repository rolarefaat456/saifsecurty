// provider/control.dart
import 'package:flutter/material.dart';

class Control extends ChangeNotifier {
  int CurrentIndex = 0;
  selected(int index) {
    CurrentIndex = index;
    notifyListeners();
  }
}