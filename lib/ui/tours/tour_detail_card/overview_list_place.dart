import 'package:flutter/material.dart';

class OverViewListPlace extends StatelessWidget {
  const OverViewListPlace({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(
        height: 160,
        width: 150,
      ),
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/hanhtrinh.jpg'), fit: BoxFit.cover),
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
    );
  }
}
