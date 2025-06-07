import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/welcome');
                },
                icon: SvgPicture.asset(
                  'assets/icons/arrow_long_left.svg',
                  width: 28,
                  height: 28,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 24),
              Text(
                "Let's Sign You Up",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Text(
                "Welcome back\nYou've been missed!", // เพิ่ม apostrophe
                style: TextStyle(
                  fontSize: 20, // ลดขนาดลง (ตอนนี้ 30 ใหญ่เกิน)
                  color: Colors.grey[600],
                ),
              ),
              SizedBox(height: 40),
              Text(
                "Full Name",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter Full Name",
                  hintStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey[400], // เปลี่ยนเป็นสีอ่อนกว่า
                  ),

                  // ขอบปกติ (ไม่ได้โฟกัส)
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      15,
                    ), // ใช้ 15 เหมือน border
                    borderSide: BorderSide(
                      color: Colors.grey[300]!, // สีเทาอ่อน
                      width: 1.0,
                    ),
                  ),

                  // ขอบตอนโฟกัส
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: Colors.grey[400]!, // สีเทาเข้มขึ้นเล็กน้อย
                      width: 1.5,
                    ),
                  ),

                  // ขอบเริ่มต้น
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.grey[300]!),
                  ),

                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 16, 
                  ),
                ),
              ),
              SizedBox(height: 16),
              Text(
                "Email",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter Password",
                  hintStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey[400], // เปลี่ยนเป็นสีอ่อนกว่า
                  ),

                  // ขอบปกติ (ไม่ได้โฟกัส)
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      15,
                    ), // ใช้ 15 เหมือน border
                    borderSide: BorderSide(
                      color: Colors.grey[300]!, // สีเทาอ่อน
                      width: 1.0,
                    ),
                  ),

                  // ขอบตอนโฟกัส
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: Colors.grey[400]!, // สีเทาเข้มขึ้นเล็กน้อย
                      width: 1.5,
                    ),
                  ),

                  // ขอบเริ่มต้น
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.grey[300]!),
                  ),

                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 16, // เพิ่มเป็น 16 ให้สูงขึ้น
                  ),
                ),
              ),
              SizedBox(height: 16),
              Text(
                "Password",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter Password",
                  hintStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey[400], // เปลี่ยนเป็นสีอ่อนกว่า
                  ),

                  // ขอบปกติ (ไม่ได้โฟกัส)
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      15,
                    ), // ใช้ 15 เหมือน border
                    borderSide: BorderSide(
                      color: Colors.grey[300]!, // สีเทาอ่อน
                      width: 1.0,
                    ),
                  ),

                  // ขอบตอนโฟกัส
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: Colors.grey[400]!, // สีเทาเข้มขึ้นเล็กน้อย
                      width: 1.5,
                    ),
                  ),

                  // ขอบเริ่มต้น
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.grey[300]!),
                  ),

                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 16, // เพิ่มเป็น 16 ให้สูงขึ้น
                  ),
                ),
              ),
              SizedBox(height: 16),
              Text(
                "Confirm Password",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Confirm Password",
                  hintStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey[400], // เปลี่ยนเป็นสีอ่อนกว่า
                  ),

                  // ขอบปกติ (ไม่ได้โฟกัส)
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      15,
                    ), // ใช้ 15 เหมือน border
                    borderSide: BorderSide(
                      color: Colors.grey[300]!, // สีเทาอ่อน
                      width: 1.0,
                    ),
                  ),

                  // ขอบตอนโฟกัส
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: Colors.grey[400]!, // สีเทาเข้มขึ้นเล็กน้อย
                      width: 1.5,
                    ),
                  ),

                  // ขอบเริ่มต้น
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.grey[300]!),
                  ),

                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 16, // เพิ่มเป็น 16 ให้สูงขึ้น
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
