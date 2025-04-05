import 'package:flutter/material.dart';
import 'package:food_delivery_provider/Model/cart_model.dart';
import 'package:food_delivery_provider/Model/product_model.dart';

class CartProvider with ChangeNotifier {
  List<CartModel> _carts = [];

  List<CartModel> get carts => _carts;

  set Carts(List<CartModel> carts) {
    _carts = carts;
    notifyListeners();
  }

  addCart(MyProductModel productModel) {
    if (productExist(productModel)) {
      int index = _carts.indexWhere(
        (element) => element.productModel == productModel,
      );
      _carts[index].quantity = _carts[index].quantity + 1;
    } else {
      _carts.add(CartModel(productModel: productModel, quantity: 1));
    }
    notifyListeners();
  }

  addQuantity(MyProductModel Product) {
    int index = _carts.indexWhere(
      (element) => element.productModel == Product,
    );
    _carts[index].quantity = _carts[index].quantity + 1;
    notifyListeners();
  }

  recuceQuantity(MyProductModel Product) {
    int index = _carts.indexWhere(
      (element) => element.productModel == Product,
    );
    _carts[index].quantity = _carts[index].quantity - 1;
    notifyListeners();
  }

  productExist(MyProductModel productModel) {
    if (_carts.indexWhere(
          (element) => element.productModel == productModel,
        ) ==
        -1) {
      return false;
    }else {
      return true;
    }
  }
  double totalCarts(){
    double total = 0;
    for (int i = 0; i < _carts.length; i++) {
      total += _carts[i].quantity * _carts[i].productModel.price;
    }
    return total;
  }
}
