import 'package:flutter/material.dart';

import 'package:sneaker_shop_ui/model/shoes_model.dart';

class SneakerDetailScreen extends StatefulWidget {
  final SneakerModel sneaker;

  const SneakerDetailScreen({super.key, required this.sneaker});

  @override
  State<SneakerDetailScreen> createState() => _SneakerDetailScreenState();
}

class _SneakerDetailScreenState extends State<SneakerDetailScreen> {
  int selectedColorIndex = 0;
  int selectedSizeIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE3F2FD), // สีฟ้าอ่ونเหมือนในรูป
      body: SafeArea(
        child: Column(
          children: [
            // Header
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 4,
                          ),
                        ],
                      ),
                      child: Icon(Icons.arrow_back_ios_new, size: 20),
                    ),
                  ),
                  Icon(Icons.more_vert, size: 24),
                ],
              ),
            ),

            // รูปรองเท้า
            Expanded(
              flex: 2,
              child: Container(
                width: double.infinity,
                child: Center(
                  child: Transform.rotate(
                    angle: -0.2,
                    child: Image.asset(
                      widget
                          .sneaker
                          .colorOptions[selectedColorIndex]
                          .image,
                      width: 250,
                      height: 250,
                      fit: BoxFit.contain,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          width: 250,
                          height: 250,
                          color: Colors.grey[300],
                          child: Icon(Icons.image, size: 100),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ),

            // ส่วนล่าง - ข้อมูลสินค้า
            Expanded(
              flex: 3,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // ชื่อและดาว
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              widget.sneaker.name,
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Icon(Icons.close, color: Colors.grey),
                        ],
                      ),

                      // ดาวและรีวิว
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.orange, size: 16),
                          SizedBox(width: 4),
                          Text(
                            "5.0 (17 reviews)",
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 20),

                      // Size
                      Text(
                        "Size:",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 10),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children:
                              widget.sneaker.sizes.asMap().entries.map((
                                entry,
                              ) {
                                int index = entry.key;
                                int size = entry.value;
                                bool isSelected =
                                    selectedSizeIndex == index;

                                return GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      selectedSizeIndex = index;
                                    });
                                  },
                                  child: Container(
                                    margin: EdgeInsets.only(right: 12),
                                    width: 45,
                                    height: 45,
                                    decoration: BoxDecoration(
                                      color:
                                          isSelected
                                              ? Colors.blue
                                              : Colors.grey[100],
                                      borderRadius: BorderRadius.circular(
                                        12,
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        size.toString(),
                                        style: TextStyle(
                                          color:
                                              isSelected
                                                  ? Colors.white
                                                  : Colors.black,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              }).toList(),
                        ),
                      ),

                      SizedBox(height: 20),

                      // Select Color
                      Text(
                        "Select Color:",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children:
                            widget.sneaker.colorOptions
                                .asMap()
                                .entries
                                .map((entry) {
                                  int index = entry.key;
                                  SneakerColorOption colorOption =
                                      entry.value;
                                  bool isSelected =
                                      selectedColorIndex == index;

                                  return GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        selectedColorIndex = index;
                                      });
                                    },
                                    child: Container(
                                      margin: EdgeInsets.only(right: 12),
                                      width: 35,
                                      height: 35,
                                      decoration: BoxDecoration(
                                        color: colorOption.color,
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color:
                                              isSelected
                                                  ? Colors.black
                                                  : Colors.grey[300]!,
                                          width: isSelected ? 3 : 1,
                                        ),
                                      ),
                                    ),
                                  );
                                })
                                .toList(),
                      ),

                      SizedBox(height: 20),

                      // Description
                      Text(
                        "Description",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        widget.sneaker.description,
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 14,
                          height: 1.5,
                        ),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),

                      Spacer(),

                      // Bottom section with color selector and add button
                      Row(
                        children: [
                          // Color circles
                          Row(
                            children:
                                widget.sneaker.colorOptions
                                    .asMap()
                                    .entries
                                    .map((entry) {
                                      int index = entry.key;
                                      SneakerColorOption colorOption =
                                          entry.value;

                                      return Container(
                                        margin: EdgeInsets.only(right: 8),
                                        width: 30,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          color: colorOption.color,
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: Colors.grey[300]!,
                                            width: 1,
                                          ),
                                        ),
                                      );
                                    })
                                    .toList(),
                          ),

                          Spacer(),

                          // Add button
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.grey[700],
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 24,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
