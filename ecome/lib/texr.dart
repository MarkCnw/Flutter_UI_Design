import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
            Text(
              'หน้าจอสูง: ${MediaQuery.of(context).size.height.toInt()}px',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Container(
              width: 300,
              height: 200,
              color: Colors.grey[100], // พื้นหลังสีเทา
              child: Stack(
                children: [
                  // Profile card content
                  Image.asset('assets/image.png'),
                  Positioned(
                    bottom: 10,
                    right: 10,
                    child: Icon(Icons.edit),
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
