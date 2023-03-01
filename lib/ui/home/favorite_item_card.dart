import 'package:flutter/material.dart';

class FavoriteItemCard extends StatelessWidget {
  final String tourist = '123,928 lượt thích';
  final String title = 'Ha Noi';
  const FavoriteItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(
        height: 200,
        width: 100
      ),
      decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/mag1.png'),
            fit: BoxFit.cover
          ),
        borderRadius: BorderRadius.all(Radius.circular(10.0))
      ),
      child: Stack(
        children: [
          Text(
            title,
          ),
          Text(
            tourist,
          ),
        ]
        
      ),
    );
  }
}