import 'package:flutter/material.dart';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'discover_card/card_1.dart';
import 'discover_card/card_2.dart';

class DiscoverMore extends StatelessWidget {
  const DiscoverMore({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Container(
              // color: Colors.red,
              height: 400,
              child: Card2(),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Container(
              // color: Colors.blue,
              height: 400,
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      
                      child: Card2(),
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
    );
  }
}
