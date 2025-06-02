import 'package:flutter/material.dart';
import 'package:sneaker_shop_ui/services/cart_services.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    final cartItems = CartManager.cartItems;

    return Scaffold(
      appBar: AppBar(
        title: Text('My Cart', style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.delete_outline, color: Colors.red),
            onPressed: () {
              setState(() {
                CartManager.clearCart();
              });
            },
          )
        ],
      ),
      body: cartItems.isEmpty
          ? Center(child: Text('Your cart is empty 🛒', style: TextStyle(fontSize: 18)))
          : ListView.builder(
              padding: EdgeInsets.all(16),
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                final item = cartItems[index];
                final sneaker = item['sneaker'];
                final size = item['size'];
                final color = item['color'];
                final quantity = item['quantity'];

                return Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                  elevation: 4,
                  margin: EdgeInsets.only(bottom: 16),
                  child: Padding(
                    padding: EdgeInsets.all(12),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            color.image,
                            width: 70,
                            height: 70,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('${sneaker.brand} ${sneaker.name}',
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                              SizedBox(height: 4),
                              Text('Size: $size', style: TextStyle(color: Colors.grey[600])),
                              SizedBox(height: 4),
                              Text('\$${sneaker.price.toStringAsFixed(2)}',
                                  style: TextStyle(fontSize: 16, color: Colors.blue)),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                _circleButton(Icons.remove, () {
                                  setState(() {
                                    CartManager.decrementItem(index);
                                  });
                                }),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 8),
                                  child: Text('$quantity', style: TextStyle(fontSize: 16)),
                                ),
                                _circleButton(Icons.add, () {
                                  setState(() {
                                    CartManager.incrementItem(index);
                                  });
                                }),
                              ],
                            ),
                            SizedBox(height: 8),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  CartManager.removeItem(index);
                                });
                              },
                              child: Row(
                                children: [
                                  Icon(Icons.delete, color: Colors.red, size: 18),
                                  SizedBox(width: 4),
                                  Text('Remove', style: TextStyle(color: Colors.red, fontSize: 12)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 8)],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Text('Total:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                Spacer(),
                Text(
                  '\$${CartManager.totalPrice.toStringAsFixed(2)}',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blue),
                ),
              ],
            ),
            SizedBox(height: 12),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Checked out!')),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  padding: EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                ),
                child: Text('Checkout', style: TextStyle(fontSize: 16, color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _circleButton(IconData icon, VoidCallback onPressed) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(color: Colors.black, shape: BoxShape.circle),
        child: Icon(icon, color: Colors.white, size: 16),
      ),
    );
  }
}
