import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
              
            ],
          ),
        ),
      ),
    );
  }
}
