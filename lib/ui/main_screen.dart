import 'package:flutter/material.dart';
import '../models/place.dart';
import 'package:hukotravel/ui/detail/detail_place_screen.dart';
import 'package:hukotravel/ui/home/favorite_tours_screen.dart';
import 'package:hukotravel/ui/home/home_screen.dart';
import 'package:hukotravel/ui/profile/profile_overview_screen.dart';
import 'package:hukotravel/ui/tours/tour_overview_screen.dart';
import '../models/place.dart';

class MainScreen extends StatefulWidget {
  static const routeName = '/';
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  static final List<Widget> _page = <Widget>[
    const FavoriteToursScreen(),
    const HomeScreen(),
    // DetailPlaceScreen(place: Place.samples[0]),
    const ProfileOverviewScreen(),
    
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
