import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SneakerScreen extends StatefulWidget {
  const SneakerScreen({super.key});

  @override
  State<SneakerScreen> createState() => _SneakerScreenState();
}

class _SneakerScreenState extends State<SneakerScreen> {
  List<String> categories = [
    'All',
    'Adidas',
    'Hooka',
    'New Balance',
    'Nike',
    'On',
  ];
  String selectedCategory = 'All';
  // ฟังก์ชันสำหรับสร้าง Chip ของหมวดหมู่
  Widget categoryChip(String label, bool isSelected) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: ChoiceChip(
        label: Text(label),
        selected: isSelected,
        onSelected: (_) {
          setState(() {
            selectedCategory = label;
          });
        },
        selectedColor: Colors.black,
        backgroundColor: Colors.grey[200],
        labelStyle: TextStyle(
          color: isSelected ? Colors.white : Colors.black,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ส่วน AppBar (บนสุด)
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 8.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Iconsax.element_3, size: 28),
                    ),
                    Text(
                      "Mark Shoes",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Iconsax.notification, size: 28),
                    ),
                  ],
                ),
              ),
              // ✅ ส่วน Search Bar (เขียนถัดจาก AppBar)
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 8.0,
                ),
                child: Row(
                  children: [
                    // ช่องค้นหา (ยืดขยาย)
                    Expanded(
                      child: Container(
                        height: 50, // เพิ่มความสูงที่แน่นอน
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        decoration: BoxDecoration(
                          color: Color(0xFFF5F5F5), // สีเทาอ่อนเหมือนเดิม
                          borderRadius: BorderRadius.circular(
                            12,
                          ), // ลด radius จาก 20 เป็น 12
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Iconsax.search_normal,
                              color: Colors.grey[600],
                              size: 20,
                            ),
                            SizedBox(width: 12),
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'Search',
                                  hintStyle: TextStyle(
                                    color: Colors.grey[500],
                                    fontSize: 16,
                                  ),
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.zero,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 12),
                    // ปุ่มกรอง (filter)
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(
                          12,
                        ), // เปลี่ยนจาก circle เป็น radius 12
                      ),
                      child: Icon(
                        Iconsax.setting_4,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ],
                ),
              ),

              //ฺBanner
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Container(
                  width: double.infinity,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      16,
                    ), // ลด radius จาก 20 เป็น 16
                    color: Color(
                      0xFFE3F2FD,
                    ), // ใช้สีฟ้าอ่อนที่ใกล้เคียงกับภาพมากขึ้น
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        right: 10,
                        bottom: 0,
                        top: 0,
                        child: Transform.rotate(
                          angle: 0.185398,
                          child: Image.asset(
                            'assets/on/cloudx4/black.png',
                            fit: BoxFit.contain,
                            width: 160,
                            height: 160,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Year - End Sale",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Get up to 90% off",
                              style: TextStyle(
                                color:
                                    Colors
                                        .grey[700], // เปลี่ยนจากสีขาวเป็นเทาเข้ม
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 10),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                foregroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                    18,
                                  ), // ลด radius จาก 20 เป็น 12
                                ),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 20,
                                  vertical: 8,
                                ),
                              ),
                              child: Text(
                                "Shop Now",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //category
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Category",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 21,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 10),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal, // เพิ่มบรรทัดนี้
                      child: Row(
                        children: [
                          categoryChip("All", true),
                          categoryChip("Adidas", false),
                          categoryChip("Hooka", false),
                          categoryChip("New Balance", false),
                          categoryChip("Nike", false),
                          categoryChip("On", false),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
