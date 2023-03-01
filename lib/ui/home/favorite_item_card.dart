import 'package:flutter/material.dart';

class FavoriteItemCard extends StatelessWidget {
  final String tourist = '123,928 lượt thích';
  final String title = 'Ha Noi';
  const FavoriteItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(
        height: 160,
        width: 150,
      ),
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/mag1.png'), fit: BoxFit.cover),
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            bottom: 30,
            child: Text(
              title,
              style: const TextStyle(color: Colors.white),
            ),
          ),
          Positioned(
            bottom: 10,
            child: Text(
              tourist,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
