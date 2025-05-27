import 'package:flutter/material.dart';
import 'package:sneaker_shop_ui/model/shoes_model.dart';

class SneakerCard extends StatelessWidget {
  final SneakerModel sneaker;

  const SneakerCard({required this.sneaker});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Image.asset(
              sneaker.colorOptions[0].image, // ใช้ภาพของสีแรก
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              sneaker.name,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text('\$${sneaker.price.toStringAsFixed(2)}'),
          ),
        ],
      ),
    );
  }
}
