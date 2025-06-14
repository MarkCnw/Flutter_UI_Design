import 'package:flutter/material.dart';
import 'package:sneaker_shop_ui/model/shoes_model.dart';
import 'package:sneaker_shop_ui/screen/cart_screen.dart';
import 'package:sneaker_shop_ui/services/cart_services.dart';

class SneakerDetailScreen extends StatefulWidget {
  final SneakerModel sneaker;

  const SneakerDetailScreen({super.key, required this.sneaker});

  @override
  State<SneakerDetailScreen> createState() => _SneakerDetailScreenState();
}

class _SneakerDetailScreenState extends State<SneakerDetailScreen> {
  int _selectedSize = -1;
  int _selectedColorIndex = 0;

  @override
  void initState() {
    super.initState();
    if (widget.sneaker.sizes.isNotEmpty) {
      _selectedSize = widget.sneaker.sizes[0];
    }
  }

  @override
  Widget build(BuildContext context) {
    final sneaker = widget.sneaker;
    final selectedColorOption = sneaker.colorOptions[_selectedColorIndex];

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                padding: EdgeInsets.all(16),
                children: [
                  // Close button
                  Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      icon: Icon(Icons.close),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ),

                  // Shoe image
                  Center(
                    child: Image.asset(
                      selectedColorOption.image,
                      height: 200,
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(height: 16),

                  // Name & rating
                  Text(
                    '${sneaker.brand} ${sneaker.name}',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.blue, size: 18),
                      SizedBox(width: 4),
                      Text(
                        '5.0',
                        style: TextStyle(color: Colors.blue, fontSize: 14),
                      ),
                      SizedBox(width: 4),
                      Text('(17 reviews)', style: TextStyle(fontSize: 14)),
                    ],
                  ),
                  SizedBox(height: 20),

                  // Size selection
                  Text(
                    'Size:',
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
                  ),
                  SizedBox(height: 8),
                  Wrap(
                    spacing: 10,
                    children:
                        sneaker.sizes.map((size) {
                          bool isSelected = _selectedSize == size;
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                _selectedSize = size;
                              });
                            },
                            child: Container(
                              width: 40,
                              height: 40,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color:
                                    isSelected
                                        ? Colors.blue
                                        : Colors.grey[200],
                                shape: BoxShape.circle,
                              ),
                              child: Text(
                                size.toString(),
                                style: TextStyle(
                                  color:
                                      isSelected
                                          ? Colors.white
                                          : Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          );
                        }).toList(),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'select color',
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children:
                        sneaker.colorOptions.asMap().entries.map((entry) {
                          int index = entry.key;
                          SneakerColorOption option = entry.value;
                          bool isSelected = _selectedColorIndex == index;

                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                _selectedColorIndex = index;
                              });
                            },
                            child: Container(
                              margin: EdgeInsets.only(right: 12),
                              width: 28,
                              height: 28,
                              decoration: BoxDecoration(
                                color: option.color,
                                shape: BoxShape.circle,
                                border:
                                    isSelected
                                        ? Border.all(
                                          color: Colors.black,
                                          width: 2,
                                        )
                                        : null,
                              ),
                            ),
                          );
                        }).toList(),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Description:',
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
                  ),
                  SizedBox(height: 8),
                  Text(
                    sneaker.description,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[700],
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(color: Colors.black12, blurRadius: 8),
                ],
              ),
              child: Row(
                children: [
                  Text(
                    '\$${sneaker.price.toStringAsFixed(2)}',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  ElevatedButton(
                    onPressed: () {
                      final sneaker = widget.sneaker;
                      final selectedColorOption =
                          sneaker.colorOptions[_selectedColorIndex];

                      CartManager.addItem(
                        sneaker,
                        _selectedSize,
                        selectedColorOption,
                      );

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CartScreen(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      padding: EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 12,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                    ),
                    child: Icon(
                      Icons.shopping_cart_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
