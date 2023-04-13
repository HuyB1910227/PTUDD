import 'package:flutter/material.dart';
import 'package:hukotravel/ui/handguide_tourist/handguide_manager.dart';
import './handguide_card.dart';

class HandGuideDetailSceen extends StatelessWidget {
  HandGuideDetailSceen({super.key});

  final handGuideManager = HandGuideManager();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: handGuideManager.getHandGuideTourist(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          final handGuideTourist = snapshot.data ?? [];
          return Container(
            padding: const EdgeInsets.all(10.0),
            height: 200,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: handGuideTourist.length,
              itemBuilder: (context, index) {
                final item = handGuideTourist[index];
                return HandGuideCard(handGuideTourist: item);
              },
              separatorBuilder: (context, index) {
                return const SizedBox(width: 16);
              },
            ),
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
