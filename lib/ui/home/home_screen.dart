import 'package:flutter/material.dart';
import 'search.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HuKoTravel'),
        
        actions: <Widget>[
          buildBookingIcon(),
          buildRingIcon()
        ],
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            SizedBox(height: 8.0,),
            SearchBar(),
          ]
        ),
      ),
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
        ]),
    );
  }

  Widget buildBookingIcon() {
    return 
     IconButton(
        onPressed: () {
          print('Ban da nhan');
        },
        icon: const Icon(
          Icons.card_travel,
        )
      );
  }

  Widget buildRingIcon() {
    return 
     IconButton(
        onPressed: () {
          print('Ban da nhan');
        },
        icon: const Icon(
          Icons.notifications_none_outlined,
        )
      );
  }
}