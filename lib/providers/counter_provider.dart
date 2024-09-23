import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int value;

  CounterProvider({this.value = 0});

  void increment() async {
    value++;
    notifyListeners();
  }

  void decrement() async {
    value++;
    notifyListeners();
  }
}
