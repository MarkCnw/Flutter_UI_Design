import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneaker_shop_ui/model/shoes_model.dart';
import 'package:sneaker_shop_ui/provider/sneaker_detail_provider.dart';


class SneakerDetailPage extends StatelessWidget {
  final SneakerModel sneaker;
  const SneakerDetailPage({super.key, required this.sneaker});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<SneakerProvider>(context);
    final selectedImage = sneaker.colorOptions[provider.selectedColorIndex].image;

    return Scaffold(
      appBar: AppBar(title: Text(sneaker.name)),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(child: Image.asset(selectedImage, height: 200)),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("เลือกสี", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ),
          Row(
            children: List.generate(sneaker.colorOptions.length, (index) {
              final option = sneaker.colorOptions[index];
              return GestureDetector(
                onTap: () {
                  provider.selectColor(index);
                },
                child: Container(
                  margin: const EdgeInsets.all(8),
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    color: option.color,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: provider.selectedColorIndex == index ? Colors.black : Colors.grey,
                      width: 2,
                    ),
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
