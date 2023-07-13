import 'package:flutter/material.dart';

class ShopProvider extends ChangeNotifier {
  int _currentIndex = 0;

  int get currentIndex => _currentIndex;
  void ontap(int index) {
    _currentIndex = index;
    notifyListeners();
  }
}
