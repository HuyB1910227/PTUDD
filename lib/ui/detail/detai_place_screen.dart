import 'package:flutter/material.dart';
import '../../model/place.dart';

class DetailPlaceScreen extends StatelessWidget {
  final Place place;

  const DetailPlaceScreen({
    Key? key,
    required this.place,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chi tiết Phú Quốc"),
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            alignment: Alignment.center,
            child: Text(
              "Du lịch " + place.name,
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              final description = place.descriptions[index];
              return Column(
                children: [
                  Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        description.title,
                        style: const TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w700),
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
            itemCount: place.descriptions.length,
          ),
        ],
      ),
    );
  }
}
