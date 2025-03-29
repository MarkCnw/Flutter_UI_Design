import 'package:flutter/material.dart';
import 'package:food_delivery_provider/consts.dart';
import 'package:food_delivery_provider/onboard_model.dart';

class AppOnBoardPage extends StatefulWidget {
  const AppOnBoardPage({super.key});

  @override
  State<AppOnBoardPage> createState() => _AppOnBoardPageState();
}

class _AppOnBoardPageState extends State<AppOnBoardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kblack,
      body: Stack(
        alignment: Alignment.topCenter ,
        children: [
          PageView.builder(
            onPageChanged: (value) {},
            itemCount: onboards.length,
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  Positioned(
                    top: -70,
                    left: 0,
                    right: 0,
                    child: Image.asset(
                    onboards[index].image,
                    width: 600,
                    height: 600,
                    fit: BoxFit.contain,
                  )
                  ),
                  Positioned(child: 
                  Padding(padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    children: [
                      Text(onboards[index].text1,style: TextStyle(color: Colors.white,fontSize: 50,fontWeight: FontWeight.bold),)
                    ],
                  ),))
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
