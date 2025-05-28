import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sneaker_shop_ui/model/shoes_model.dart';

class SneakerDetailScreen extends StatefulWidget {
  final SneakerModel sneaker;

  const SneakerDetailScreen({super.key, required this.sneaker});

  @override
  State<SneakerDetailScreen> createState() => _SneakerDetailScreenState();
}

class _SneakerDetailScreenState extends State<SneakerDetailScreen> {
  int selectedColorIndex = 0;
  int selectedSizeIndex = 2; // Default to size 41 (index 2)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE3F2FD), // Light blue background
      body: SafeArea(
        child: Column(
          children: [
            // Header with back button and close (X)
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Empty space to balance the layout
                  SizedBox(width: 24),
                  // Close button (X)
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Icon(
                      Icons.close,
                      size: 24,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),

            // Shoe image section
            Expanded(
              flex: 2,
              child: Container(
                width: double.infinity,
                child: Center(
                  child: Transform.rotate(
                    angle: -0.15, // Slight rotation
                    child: Image.asset(
                      widget.sneaker.colorOptions[selectedColorIndex].image,
                      width: 280,
                      height: 280,
                      fit: BoxFit.contain,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          width: 280,
                          height: 280,
                          color: Colors.grey[300],
                          child: Icon(Icons.image, size: 100),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ),

            // Product details section
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
                  padding: EdgeInsets.all(24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Product name
                      Text(
                        "Nike Air Max Pre-Day", // Fixed name as shown in image
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),

                      SizedBox(height: 8),

                      // Rating and reviews
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.blue, size: 18),
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

                      SizedBox(height: 24),

                      // Size section
                      Text(
                        "Size:",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 12),
                      
                      // Size options
                      Row(
                        children: [
                          _buildSizeOption("39", 0),
                          _buildSizeOption("40", 1),
                          _buildSizeOption("41", 2),
                          _buildSizeOption("42", 3),
                          _buildSizeOption("43", 4),
                          _buildSizeOption("44", 5),
                          _buildSizeOption("45", 6),
                        ],
                      ),

                      SizedBox(height: 24),

                      // Select Color section
                      Text(
                        "Select Color:",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 12),
                      
                      // Color options
                      Row(
                        children: [
                          _buildColorOption(Color(0xFF87CEEB), 0), // Light blue
                          _buildColorOption(Color(0xFF90EE90), 1), // Light green
                          _buildColorOption(Color(0xFFDDA0DD), 2), // Plum/Light purple
                        ],
                      ),

                      SizedBox(height: 24),

                      // Description
                      Text(
                        "Description",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Nike Air Max is a line of shoes produced by Nike, Inc. with the first model released in 1987. Air Max shoes are identified by their midsoles incorporating filled with pressurized gas, visible from the exterior of the shoe and intended to provide cushioning to the underfoot. Nike Air Max is a line of shoes produced by Nike Inc. with",
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 14,
                          height: 1.5,
                        ),
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                      ),

                      Spacer(),

                      // Bottom section with color indicators and add button
                      Row(
                        children: [
                          // Small color indicators
                          Container(
                            width: 35,
                            height: 35,
                            decoration: BoxDecoration(
                              color: Color(0xFF87CEEB),
                              shape: BoxShape.circle,
                            ),
                          ),
                          SizedBox(width: 8),
                          Container(
                            width: 35,
                            height: 35,
                            decoration: BoxDecoration(
                              color: Colors.grey[400],
                              shape: BoxShape.circle,
                            ),
                          ),

                          Spacer(),

                          // Add to cart button
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              color: Colors.grey[700],
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  blurRadius: 8,
                                  offset: Offset(0, 4),
                                ),
                              ],
                            ),
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 28,
                            ),
                          ),

                          SizedBox(width: 12),

                          // Additional icons
                          Container(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Iconsax.profile_2user,
                              color: Colors.grey[600],
                              size: 20,
                            ),
                          ),
                          SizedBox(width: 8),
                          Container(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Iconsax.search_normal,
                              color: Colors.grey[600],
                              size: 20,
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

  Widget _buildSizeOption(String size, int index) {
    bool isSelected = selectedSizeIndex == index;
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
          color: isSelected ? Color(0xFF87CEEB) : Colors.grey[100],
          borderRadius: BorderRadius.circular(12),
          border: isSelected ? Border.all(color: Color(0xFF87CEEB), width: 2) : null,
        ),
        child: Center(
          child: Text(
            size,
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.black,
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildColorOption(Color color, int index) {
    bool isSelected = selectedColorIndex == index;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedColorIndex = index;
        });
      },
      child: Container(
        margin: EdgeInsets.only(right: 16),
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
          border: Border.all(
            color: isSelected ? Colors.black : Colors.grey[300]!,
            width: isSelected ? 3 : 1,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 4,
              offset: Offset(0, 2),
            ),
          ],
        ),
      ),
    );
  }
}