import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneaker_shop_ui/provider/sneaker_provider.dart';
import 'package:sneaker_shop_ui/screen/app_navbar_screen.dart';



void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SneakerProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AppNavbarScreen(), // 👈 หน้าหลัก
    );
  }
}
