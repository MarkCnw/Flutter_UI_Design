import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomTaps(),
    );
  }
}

class BottomTaps extends StatefulWidget {
  const BottomTaps({Key? key}) : super(key: key);

  @override
  State<BottomTaps> createState() => _BottomTapsState();
}

class _BottomTapsState extends State<BottomTaps> {
  int _selectIndex = 0;
  final List<Widget> _pages = [
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.green,
    ),
    Container(
      color: Colors.purple,
    ),
    Container(
      color: Colors.yellow,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (index) {
          setState(() {
            _selectIndex = index;
          });
        },
        items: [
           BottomNavigationBarItem(
            icon: SvgPicture.asset(_selectIndex == 0 ? 'assets/vectors/home-bold.svg' :'assets/vectors/home-outline.svg'),
            label: ''
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(_selectIndex == 1 ? 'assets/vectors/search-bold.svg' :'assets/vectors/search-outline.svg'),
            label: ''
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(_selectIndex == 2 ? 'assets/vectors/add-square-bold.svg' : 'assets/vectors/add-square-outline.svg'),
            label: ''
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(_selectIndex == 3 ? 'assets/vectors/video-play-bold.svg' : 'assets/vectors/video-play-outline.svg'),
            label: ''
          ),
          BottomNavigationBarItem(
            icon: Container(
              height: 30,
              width: 30,
              decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/images/pig.jpg')),
                shape: BoxShape.circle
              ),
            ),
            label: ''),
        ],
      ),
    );
  }
}
