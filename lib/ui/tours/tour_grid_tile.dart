import 'package:flutter/material.dart';
import '../../models/tour.dart';
import 'package:intl/intl.dart';

class TourGridTile extends StatelessWidget {
  final Tour tour;
  const TourGridTile(this.tour, {super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: const [
            BoxShadow(
              color: Colors.black,
              spreadRadius: 50.0,
              blurRadius: 20,
              offset: Offset(5, 20),
            )
          ]
        ),
        child: GridTile(
          header: buildGridHeaderBar(context),
          child: GestureDetector(
              onTap: () {
                print("click tour");
              },
              child: Container(
                color: Colors.white,
                height: 400,
                child: Column(
                  children: [
                    Expanded(
                      child: Image.network(
                        tour.imageUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                    // const SizedBox(height: 8.0),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        padding: EdgeInsets.all(2.0),
                        child: Text(
                          tour.title,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    // const SizedBox(height: 5.0),
      
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        padding: const EdgeInsets.all(2.0),
                        child: Text(
                          'Khởi hành ${DateFormat('dd/MM/yyyy hh:mm').format(tour.startDate)}',
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        padding: const EdgeInsets.all(2.0),
                        child: Text(
                          'Mã tour: ${tour.id}',
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        padding: const EdgeInsets.all(2.0),
                        child: Text(
                          'Số chỗ: ${tour.slot}',
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        child: Text(
                          '${tour.price} đ',
                         style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.amber
                         ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 5.0),
                  ],
                ),
              )),
        ),
      ),
    );
  }

  Widget buildGridHeaderBar(BuildContext context) {
    return GridTileBar(
      
      leading: IconButton(
          onPressed: () {
            print("favorite");
          },
          icon: const Icon(
            Icons.favorite_border_outlined,
            color: Colors.red,
          )
        ),
      title: const Text(""),
      trailing: const Icon(
        Icons.new_label,
        color: Colors.blue,
      ),
    );
  }
}
