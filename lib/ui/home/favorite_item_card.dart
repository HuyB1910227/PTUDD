import 'package:flutter/material.dart';

class FavoriteItemCard extends StatelessWidget {
  String tourist = '';
  String title = '';
  String imageLink = 'imageLink';
  FavoriteItemCard(
    this.title,
    this.tourist,
    this.imageLink,
    {super.key}
  );

  @override
  Widget build(BuildContext context) {
    
    return Container(
      constraints: const BoxConstraints.expand(
        height: 160,
        width: 150,
      ),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(imageLink), 
              fit: BoxFit.cover
          ),
          borderRadius: const BorderRadius.all(Radius.circular(10.0))),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            bottom: 30,
            child: Text(
              title,
              style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
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
