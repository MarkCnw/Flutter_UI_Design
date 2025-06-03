import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              Spacer(flex: 2),
              Image.asset("assets/illustrations/solo.png", height: 400),
              SizedBox(height: 20),
              Text(
                textAlign: TextAlign.center,
                "Welcome To\nYamada",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Text(
                "Lorem ipsum dolor sit amet, consectetur\nadipiscing elit, sed do eiusmod tempor\nincididunt ut labore et\ndolore magna aliqua.",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey),
              ),
               Spacer(flex: 3),
              ElevatedButton(onPressed: (){}, child: Text(Login,style: TextStyle(),))
            ],
          ),
        ),
      ),
    );
  }
}
