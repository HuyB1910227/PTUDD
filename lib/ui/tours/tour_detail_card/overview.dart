import 'package:flutter/material.dart';
import 'package:hukotravel/models/tour.dart';
import 'package:hukotravel/ui/tours/tour_detail_card/overview_list_place.dart';

class OverView extends StatelessWidget {
  final Tour tour;
  const OverView(this.tour, {Key? key}) : super(key: key);

  // final List<OverViewListPlace> _itemlist = [
  //   const OverViewListPlace(),
  //   const OverViewListPlace(),
  //   const OverViewListPlace(),
  //   const OverViewListPlace(),
  // ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          alignment: Alignment.center,
          child: const Text(
            "Thông tin điểm đến",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
              color: Color.fromARGB(255, 0, 50, 91),
            ),
          ),
        ),
        Text(
          tour.description,
          textAlign: TextAlign.justify,
          style: const TextStyle(
            fontSize: 17.0,
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          alignment: Alignment.center,
          child: const Text(
            "Các địa điểm tham quan",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
              color: Color.fromARGB(255, 0, 50, 91),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10.0),
          height: 170,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              final item = tour.subImages[index];
              return OverViewListPlace(item);
            },
            separatorBuilder: (context, index) {
              return const SizedBox(width: 16);
            },
            itemCount: tour.subImages.length,
          ),
        ),
      ],
    );
  }
}
