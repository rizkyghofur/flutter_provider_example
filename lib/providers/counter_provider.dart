import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int number;

  CounterProvider({
    required this.number,
  });

  /// Increment the counter.
  ///
  /// This will also trigger a [notifyListeners] call, so that any widgets
  /// listening to this provider will be rebuilt with the new value.
  void increment() {
    number++;
    notifyListeners();
  }

  /// Decrement the counter.
  ///
  /// This will also trigger a [notifyListeners] call, so that any widgets
  /// listening to this provider will be rebuilt with the updated value.
  void decrement() {
    number--;
    notifyListeners();
  }
}
