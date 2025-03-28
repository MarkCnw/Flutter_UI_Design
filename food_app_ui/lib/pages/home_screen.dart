
import 'package:flutter/material.dart';

class CoffeeAppHomeScreen extends StatefulWidget {
  const CoffeeAppHomeScreen({super.key});

  @override
  State<CoffeeAppHomeScreen> createState() => _CoffeeAppHomeScreenState();
}

class _CoffeeAppHomeScreenState extends State<CoffeeAppHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(0),
      children: [
        Stack(
          children: [
            Container(
              height: 280,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight ,
                  end: Alignment.bottomLeft,
                  colors:[
                    Color.fromARGB(255, 17, 17, 17)
                    , Color.fromARGB(255, 49, 49, 49)
                  ] 
                  ),
              ),
            )
          ],
        )
      ],
    );
  }
}