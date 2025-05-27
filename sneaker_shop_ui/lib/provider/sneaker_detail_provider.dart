


import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneaker_shop_ui/model/shoes_model.dart';
import 'package:sneaker_shop_ui/provider/sneaker_provider.dart';
import 'package:sneaker_shop_ui/widget/sneaker_card.dart';

class SneakerShopScreen extends StatelessWidget {
  final List<SneakerModel> allSneakers = [
    ...adidasModel,
    ...hookaModel,
    ...newbalanceModel,
    ...nikeModel,
    ...onModel,
  ];

  @override
  Widget build(BuildContext context) {
    final selectedCategory = context.watch<SneakerProvider>().selectedCategory;

    // 🔴 กรองตาม category ที่เลือก
    final filteredSneakers = selectedCategory == 'All'
        ? allSneakers
        : allSneakers.where((s) => s.brand == selectedCategory).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text('Sneaker Shop'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // 🔵 ปุ่ม filter หมวดหมู่
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 40,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CategoryButton(category: 'All'),
                  CategoryButton(category: 'Adidas'),
                  CategoryButton(category: 'Hooka'),
                  CategoryButton(category: 'New Balance'),
                  CategoryButton(category: 'Nike'),
                  CategoryButton(category: 'On'),
                ],
              ),
            ),
          ),

          // 🟢 GridView แสดงสินค้า
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(8.0),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // แถวละ 2 ช่อง
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 0.7, // อัตราส่วน card
              ),
              itemCount: filteredSneakers.length,
              itemBuilder: (context, index) {
                final sneaker = filteredSneakers[index];
                return SneakerCard(sneaker: sneaker);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryButton extends StatelessWidget {
  final String category;

  const CategoryButton({required this.category});

  @override
  Widget build(BuildContext context) {
    final provider = context.read<SneakerProvider>();
    final isSelected = provider.selectedCategory == category;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          backgroundColor: isSelected ? Colors.black : Colors.white,
          foregroundColor: isSelected ? Colors.white : Colors.black,
        ),
        onPressed: () => provider.selectCategory(category),
        child: Text(category),
      ),
    );
  }
}
