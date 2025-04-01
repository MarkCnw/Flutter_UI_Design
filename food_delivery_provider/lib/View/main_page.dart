import 'package:flutter/material.dart';
import 'package:food_delivery_provider/Model/bottom_icon_model.dart';
import 'package:food_delivery_provider/View/home_page.dart';
import 'package:food_delivery_provider/consts.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  final List selectedPage = [
    const HomePage(),
    const Center(child: Text("Message Page")),
    const Center(child: Text("Explore Page")),
    const Center(child: Text("Profile Page")),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // พื้นที่เนื้อหาหลักสีแดง
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 60, // ปรับระยะห่างจากด้านล่างให้พอดีกับแถบนำทาง
            child: Container(
              color: kbgcolor,
              child: selectedPage[currentIndex],
            ),
          ),
          
          // แถบนำทางด้านล่าง
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 60, // ลดความสูงของพื้นที่สีขาวให้พอดี
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ...List.generate(
                    bottomIcons.length,
                    (index) => GestureDetector(
                      onTap: () {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center, // จัดไอคอนให้อยู่ตรงกลางแนวตั้ง
                        children: [
                          Icon(
                            currentIndex == index
                                ? bottomIcons[index].selected
                                : bottomIcons[index].unselected,
                            color: kblack,
                            size: 30.0,
                          ),
                          const SizedBox(height: 4), // ระยะห่างเล็กน้อยระหว่างไอคอนกับจุด
                          // Container(
                          //   decoration: BoxDecoration(
                          //     color: currentIndex == index ? kblack : Colors.transparent,
                          //     shape: BoxShape.circle,
                          //   ),
                          //   width: currentIndex == index ? 7 : 0,
                          //   height: currentIndex == index ? 7 : 0,
                          // )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}