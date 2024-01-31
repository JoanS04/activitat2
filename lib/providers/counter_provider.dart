import 'package:activitat2/preferences/counter.dart';
import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier{
  int counter;

  CounterProvider(this.counter);

  addCounter() {
    counter++;
    Preferences.counter = counter;
    notifyListeners();
  }

  removeCounter() {
    counter--;
    Preferences.counter = counter;
    notifyListeners();
  }

  resetCounter() {
    counter = 0;
    Preferences.counter = counter;
    notifyListeners();
  }
}