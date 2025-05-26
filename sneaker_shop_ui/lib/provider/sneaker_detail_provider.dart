import 'package:flutter/material.dart';
import 'package:sneaker_shop_ui/model/shoes_model.dart';

class SneakerProvider extends ChangeNotifier {
  String _selectedCategory = 'All';

  String get selectedCategory => _selectedCategory;

  void selectCategory(String category) {
    _selectedCategory = category;
    notifyListeners();
  }

  List<SneakerModel> get allSneakers => [
    ...adidasModel,
    ...hookaModel,
    ...newbalanceModel,
    ...nikeModel,
    ...onModel,
  ];
  List<SneakerModel> get filteredSneakers {
    if (_selectedCategory == 'All')return allSneakers; 
    return allSneakers
    .where((sneaker)=>sneaker.brand == _selectedCategory)
    .toList();
  }
}
