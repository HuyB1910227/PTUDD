import 'package:flutter/material.dart';
import 'package:hukotravel/ui/home/guide_card.dart';


class GuideListCard extends StatelessWidget {
  GuideListCard({super.key});

  final List<GuideCard> _itemList = [
    const GuideCard(),
    const GuideCard(),
    const GuideCard(),
    const GuideCard(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      height: 200,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: _itemList.length,
          itemBuilder: (context, index) {
            final item = _itemList[index];
            return item;
          },
          separatorBuilder: (context, index) {
            return const SizedBox(width: 16);
          },
          
      ),
    );
  }
}