import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                "Let's Sign You In",
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

              // Username Field
              Text(
                "Username or Email",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 8),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter Username or Email",
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
              // Password Field
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
              SizedBox(height: 30),
              Row(
                children: [
                  Expanded(
                    child: Divider(color: Colors.grey[300], thickness: 1),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text("or"),
                  ),
                  Expanded(
                    child: Divider(color: Colors.grey[300], thickness: 1),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey[500]!,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Image.network(
                        'https://developers.google.com/identity/images/g-logo.png',
                        width: 28,
                        height: 28,
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey[500]!,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: FaIcon(
                        FontAwesomeIcons.linkedinIn,
                        size: 28,
                        color: Color(0xFF0077B7),
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey[500]!,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: FaIcon(
                        FontAwesomeIcons.facebookF,
                        size: 28,
                        color: Color(0xFF1877F2),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 120),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[600],
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/register');
                    },
                    child: Text(
                      " Register",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/welcome');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
                      elevation: 0, // ไม่มีเงา
                      minimumSize: Size(330, 60), // ขนาดใหญ่ขึ้น
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18), // มุมมน
                      ),
                    ),

                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
