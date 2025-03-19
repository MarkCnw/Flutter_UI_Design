import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Stack(
          children: [
            SizedBox(
              child: Image.asset(
                'images/kk.png',
                height: size.height/1.3,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 45,right: 0,left: 0,
              child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Fall in love with cofee in ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.w600,
                      height: 1.3,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Fall in love with cofee in ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,  
                      color: Colors.grey[600],
                      fontWeight: FontWeight.w600,
                      height: 1.3,
                    ),
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}