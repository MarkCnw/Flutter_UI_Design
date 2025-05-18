import 'package:flutter/material.dart';

class SneakerProvider extends ChangeNotifier {
  int selectedColorIndex = 0;

  void selectColor(int index) {
    selectedColorIndex = index;
    notifyListeners();
  }
}