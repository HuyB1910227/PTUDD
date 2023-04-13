import 'package:flutter/material.dart';
import '../../models/handguide_tourist.dart';

class HandGuideDetail extends StatelessWidget {
  const HandGuideDetail({super.key, required this.handGuideTourist});

  final HandGuideTourist handGuideTourist;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chi tiết du lịch " + handGuideTourist.name),
      ),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            alignment: Alignment.center,
            child: Text(
              "Cẩm nang du lịch " + handGuideTourist.name,
              style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 106, 0)),
            ),
          ),
          ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              final description = handGuideTourist.descriptions[index];
              return Column(
                children: [
                  Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        description.title,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                          color: Color.fromARGB(255, 5, 22, 97),
                        ),
                      )),
                  Image(
                    image: AssetImage(description.image),
                    fit: BoxFit.cover,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Text(
                      description.description,
                      style: const TextStyle(fontSize: 15),
                    ),
                  ),
                ],
              );
            },
            itemCount: handGuideTourist.descriptions.length,
          ),
        ],
      ),
    );
    ;
  }
}
