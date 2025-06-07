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
            Expanded(
              child: Stack(
                clipBehavior: Clip.none, // อนุญาให้เกินขอบได้
                children: [
                  Container(
                    color: Colors.blue,
                    height: 200,
                    width: double.infinity,
                  ),
                  
                  // กล่องในหน้าจอ
                  Positioned(
                    top: 50,
                    left: 50,
                    child: Container(
                      width: 60,
                      height: 60,
                      color: Colors.green,
                      child: Center(
                        child: Text('50px\nเห็น', 
                          style: TextStyle(color: Colors.white, fontSize: 12),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    )
                  ),
                  
                  // กล่องเกือบนอกหน้าจอ
                  Positioned(
                    top: 700,
                    left: 60,
                    child: Container(
                      width: 60,
                      height: 60,
                      color: Colors.orange,
                      child: Center(
                        child: Text('300px\nเห็น?', 
                          style: TextStyle(color: Colors.white, fontSize: 12),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    )
                  ),
                  
                  // กล่องนอกหน้าจอแน่นอน
                  Positioned(
                    top: 800, // นอกหน้าจอแน่นอน
                    left: 50,
                    child: Container(
                      width: 60,
                      height: 60,
                      color: Colors.red,
                      child: Center(
                        child: Text('800px\nหาย', 
                          style: TextStyle(color: Colors.white, fontSize: 12),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    )
                  ),
                  
                  // กล่องทางซ้ายนอกหน้าจอ
                  Positioned(
                    top: 100,
                    left: -30, // นอกหน้าจอทางซ้าย
                    child: Container(
                      width: 60,
                      height: 60,
                      color: Colors.purple,
                      child: Center(
                        child: Text('ซ้าย\nหาย', 
                          style: TextStyle(color: Colors.white, fontSize: 12),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    )
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