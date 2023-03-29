import 'package:flutter/material.dart';

class Card1 extends StatelessWidget {

  const Card1({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/hanhtrinh.jpg'), fit: BoxFit.cover),
            borderRadius: BorderRadius.all(Radius.circular(5.0))),
          child: Stack(
            alignment: Alignment.center,
            children: const [
              Positioned(
                bottom: 10,
                child: Text(
                  "Bài viết về du lịch",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                    ),
                ),
              ),
          
            ],
          ),
      ),
    );
  }
}