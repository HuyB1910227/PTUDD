import 'package:flutter/material.dart';
import 'package:hukotravel/models/handguide_tourist.dart';
import 'package:hukotravel/ui/handguide_tourist/handguide_detail.dart';

class HandGuideCard extends StatelessWidget {
  const HandGuideCard({super.key, required this.handGuideTourist});

  final HandGuideTourist handGuideTourist;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(
        height: 150,
        width: 250,
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            //push page on widget tree
            context,
            MaterialPageRoute(
              builder: (context) {
                return HandGuideDetail(handGuideTourist: handGuideTourist);
              },
            ),
          );
        },
        child: Column(children: <Widget>[
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(handGuideTourist.imageUrl),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(10.0)),
            ),
          ),
          const SizedBox(height: 8),
          Text("Cẩm nang du lịch " + handGuideTourist.name),
        ]),
      ),
    );
  }
}
