import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier{
  int _counter = 15;

  get counter => _counter;

  void increment(){
    _counter++;
    notifyListeners(); //Notifica a los widget sobre la actualziación.
  }

  void decrement(){
    _counter--;
    notifyListeners();
  }
}