import 'package:flutter/material.dart';
import 'package:food_app_ui/colors.dart';

class CoffeeAppHomeScreen extends StatefulWidget {
  const CoffeeAppHomeScreen({super.key});

  @override
  State<CoffeeAppHomeScreen> createState() => _CoffeeAppHomeScreenState();
}

class _CoffeeAppHomeScreenState extends State<CoffeeAppHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(0),
      children: [
        Stack(
          children: [
            Container(
              height: 220, // ลดความสูงของแถบด้านบน
              decoration:  BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color.fromARGB(255, 17, 17, 17),
                    Color.fromARGB(255, 49, 49, 49),
                  ],
                ),
              ),
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22, ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Text(
                      "Location",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: xsecondaryColor,
                        fontSize: 12, // ลดขนาดตัวอักษร
                      ),
                    ),
                    Row(
                      children:  [
                        Text(
                          "Kathmandu, Nepal", // แก้ไขชื่อสถานที่ให้ตรงกับภาพ
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16, // ขยายขนาดตัวอักษร
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(width: 5),
                        Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: xsecondaryColor,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Container(
          height: MediaQuery.of(context).size.height, // ทำให้เนื้อหาไม่ชิดขอบ
          color: Colors.white,
        ),
      ],
    );
  }
}
