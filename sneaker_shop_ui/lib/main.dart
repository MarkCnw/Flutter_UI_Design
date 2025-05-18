import 'package:flutter/material.dart';
import 'package:sneaker_shop_ui/screen/app_navbar_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AppNavbarScreen(),
      title: 'Sneaker Shop UI',
    );
  }
}
