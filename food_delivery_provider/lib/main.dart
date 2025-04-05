import 'package:flutter/material.dart';
import 'package:food_delivery_provider/Provider/cart_provider.dart'; 
import 'package:food_delivery_provider/View/onboard_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers:[
        ChangeNotifierProvider(
          create: (context) => CartProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AppOnBoardPage(),
      ),
    );
  }
}
