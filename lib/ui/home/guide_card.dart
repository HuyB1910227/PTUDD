import 'package:flutter/material.dart';

class GuideCard extends StatelessWidget {
  final String title = 'Khám phá 10 nhà hàng và món ăn ngon nên thử';

  const GuideCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(
        height: 150,
        width: 250
      ),
      child: GestureDetector(
        onTap: () {
          print("guide card");
        },
        child: Column(
          children: <Widget>[
            Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('assets/CamNang1.jpeg'), fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(10.0)
                    ),
                ),
            ),
            const SizedBox(height: 8),
            Text(title),
          ]
        ),
      ),
    );
  }
}