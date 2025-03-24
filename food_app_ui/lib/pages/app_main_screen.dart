import 'package:flutter/material.dart';
import 'package:food_app_ui/Models/icon_model.dart';
import 'package:food_app_ui/colors.dart';

class CoffeeAppMainScreen extends StatefulWidget {
  const CoffeeAppMainScreen({super.key});

  @override
  State<CoffeeAppMainScreen> createState() => _CoffeeAppMainScreenState();
}

class _CoffeeAppMainScreenState extends State<CoffeeAppMainScreen> {
  int indexMenu = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: menu[indexMenu]['description'] as Widget,
      backgroundColor: xbackgroundColor,
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          children: List.generate(menu.length, (index) {
            Map items = menu[index];
            bool isActive = indexMenu == index;
            return Expanded(child: InkWell(
              onTap: (){
                setState(() {
                  indexMenu = index;
                });
              },
              child: SizedBox(
                height: 70,
                child: Column(
                  mainAxisSize:MainAxisSize.min ,
                  children: [
                    SizedBox(height: 20),
                    Icon(
                      items['icon'],
                      color: isActive ? xprimaryColor : xsecondaryColor,
                      size: 25,
                    ),
                    if(isActive) SizedBox(height: 7,),
                    if(isActive)
                    Container(
                      height: 5,
                      width: 15,
                      decoration: BoxDecoration(
                        color: xprimaryColor,
                        borderRadius: BorderRadius.circular(10)
                      ),
                    )
                  ],
                ),
              ),
            ));
          }),
        ),
      ),
    );
  }
}
