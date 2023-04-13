import 'package:flutter/material.dart';

class OverViewListPlace extends StatelessWidget {
  final String subImage;
  const OverViewListPlace(this.subImage, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(
        height: 160,
        width: 150,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(subImage),
          fit: BoxFit.cover,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
    );
  }
}
