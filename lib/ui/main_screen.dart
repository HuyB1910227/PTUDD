import 'package:flutter/material.dart';
import 'package:hukotravel/model/place.dart';
import 'package:hukotravel/ui/detail/detai_place_screen.dart';
import 'package:hukotravel/ui/home/home_screen.dart';
import 'package:hukotravel/ui/tours/tour_overview_screen.dart';
import '../model/place.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  static final List<Widget> _page = <Widget>[
    // Container(color: Colors.red),
    // Container(color: Colors.green),
    DetailPlaceScreen(place: Place.samples[0]),
    HomeScreen(),
    Container(color: Colors.blue),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _page[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.pink,
        unselectedItemColor: Colors.grey,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border_outlined),
            label: 'Yêu thích',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'Khám phá',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'Hồ sơ',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: (index) => setState(
          () {
            _selectedIndex = index;
          },
        ),
      ),
    );
  }
}
