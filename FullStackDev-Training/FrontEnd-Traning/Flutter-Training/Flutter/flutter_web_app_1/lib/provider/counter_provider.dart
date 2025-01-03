import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int _counter = 15;

  CounterProvider(String base) {
    if (int.tryParse(base) != null) {
      _counter = int.parse(base);
    }
  }

  get counter => _counter;

  void increment() {
    _counter++;
    notifyListeners(); //Notifica a los widget sobre la actualziación.
  }

  void decrement() {
    _counter--;
    notifyListeners();
  }
}
