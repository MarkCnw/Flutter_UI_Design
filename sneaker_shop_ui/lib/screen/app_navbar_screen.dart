import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sneaker_shop_ui/screen/sneaker_screen.dart';

class AppNavbarScreen extends StatefulWidget {
  const AppNavbarScreen({super.key});

  @override
  State<AppNavbarScreen> createState() => _AppNavbarScreenState();
}

class _AppNavbarScreenState extends State<AppNavbarScreen> {
  int _selectedIndex = 0;
  
  final List<Widget> _screens = [
    SneakerScreen(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 80,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Home Icon
            IconButton(
              icon: Icon(
                Iconsax.home5,
                color: _selectedIndex == 0 ? Colors.blue : Colors.grey,
                size: 28,
              ),
              onPressed: () {
                setState(() {
                  _selectedIndex = 0;
                });
              },
            ),
            
            // Message Icon
            IconButton(
              icon: Icon(
                Iconsax.message5,
                color: _selectedIndex == 1 ? Colors.blue : Colors.grey,
                size: 28,
              ),
              onPressed: () {
                setState(() {
                  _selectedIndex = 1;
                });
              },
            ),
            
            // Add Button
            GestureDetector(
              onTap: () {
                setState(() {
                  _selectedIndex = 2;
                });
              },
              child: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.grey[700],
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.add, color: Colors.white, size: 35),
              ),
            ),
            
            // Profile Icon - ขยับเข้ามาทางซ้าย
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: IconButton(
                icon: Icon(
                  Iconsax.profile_2user5,
                  color: _selectedIndex == 3 ? Colors.blue : Colors.grey,
                  size: 28,
                ),
                onPressed: () {
                  setState(() {
                    _selectedIndex = 3;
                  });
                },
              ),
            ),
            
            // Search Icon - ขยับเข้ามาทางซ้าย
            IconButton(
              icon: Icon(
                Iconsax.search_normal,
                color: _selectedIndex == 4 ? Colors.blue : Colors.grey,
                size: 28,
              ),
              onPressed: () {
                setState(() {
                  _selectedIndex = 4;
                });
              },
            ),
          ],
        ),
      ),
      body: _screens[_selectedIndex],
    );
  }
}