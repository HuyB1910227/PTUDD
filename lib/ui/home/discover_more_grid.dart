import 'package:flutter/material.dart';
import 'discover_card/card_1.dart';
import 'discover_card/card_2.dart';
import 'discover_card/card_3.dart';

class DiscoverMore extends StatelessWidget {
  const DiscoverMore({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                // color: Colors.red,
                height: 400,
                child: const Card2(),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(2.0),
              child: Container(
                // color: Colors.blue,
                height: 400,
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        child: Card3(),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: const Card1(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
