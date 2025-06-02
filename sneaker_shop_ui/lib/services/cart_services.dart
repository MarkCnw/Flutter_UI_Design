import 'package:sneaker_shop_ui/model/shoes_model.dart';

class CartManager {
  static List<Map<String, dynamic>> cartItems = [];

  static void addItem(SneakerModel sneaker, int size, SneakerColorOption color) {
    int index = cartItems.indexWhere((item) =>
        item['sneaker'].id == sneaker.id &&
        item['size'] == size &&
        item['color'].color == color.color);

    if (index >= 0) {
      cartItems[index]['quantity'] += 1;
    } else {
      cartItems.add({
        'sneaker': sneaker,
        'size': size,
        'color': color,
        'quantity': 1,
      });
    }
  }

  static void incrementItem(int index) {
    cartItems[index]['quantity'] += 1;
  }

  static void decrementItem(int index) {
    if (cartItems[index]['quantity'] > 1) {
      cartItems[index]['quantity'] -= 1;
    } else {
      cartItems.removeAt(index);
    }
  }

  static void removeItem(int index) {
    cartItems.removeAt(index);
  }

  static double get totalPrice {
    return cartItems.fold(
      0,
      (sum, item) =>
          sum + (item['sneaker'] as SneakerModel).price * item['quantity'],
    );
  }

  static void clearCart() {
    cartItems.clear();
  }
}
