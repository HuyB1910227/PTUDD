import 'package:flutter/material.dart';
import 'package:hukotravel/ui/order/order_tour.dart';
import 'package:hukotravel/ui/screens.dart';
import 'package:hukotravel/ui/tours/tour_detail_screen.dart';
import 'package:provider/provider.dart';
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
            ]),
        child: GridTile(
          header: buildGridHeaderBar(context),
          child: GestureDetector(
              onTap: () {
                // print("tour 1111111");
                Navigator.push(
                  //push page on widget tree
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return TourDetailScreen(tour);
                    },
                  ),
                );
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
                        padding: const EdgeInsets.all(2.0),
                        child: Text(
                          tour.title,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 5.0),
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
                          // 'Khởi hành ${DateFormat('dd/MM/yyyy hh:mm').format(tour.startDate)}',
                          'Khởi hành: ${tour.startDate}',
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    // Align(
                    //   alignment: Alignment.centerLeft,
                    //   child: Container(
                    //     padding: const EdgeInsets.all(2.0),
                    //     child: Text(
                    //       // 'Khởi hành ${DateFormat('dd/MM/yyyy hh:mm').format(tour.startDate)}',
                    //       'Khởi hành: ${tour.startDate}',
                    //       textAlign: TextAlign.left,
                    //     ),
                    //   ),
                    // ),

                    // Align(
                    //   alignment: Alignment.centerLeft,
                    //   child: Container(
                    //     padding: const EdgeInsets.all(2.0),
                    //     child: Text(
                    //       'Số chỗ: ${tour.slot}',
                    //       textAlign: TextAlign.left,
                    //     ),
                    //   ),
                    // ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        child: Text(
                          '${tour.price} đ',
                          style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.amber),
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
        leading: ValueListenableBuilder<bool>(
          valueListenable: tour.isFavoriteListenable,
          builder: (ctx, isFavorite, child) {
            return IconButton(
                onPressed: () {
                  // print("favorite");
                  ctx.read<ToursManager>().toggleFavoriteStatus(tour);
                },
                icon: Icon(
                  tour.isFavorite
                      ? Icons.favorite
                      : Icons.favorite_border_outlined,
                  color: Colors.red,
                ));
          },
        ),
        title: const Text(""),
        // trailing: const Icon(
        //   Icons.new_label,
        //   color: Colors.blue,
        // ),
        trailing: IconButton(
            onPressed: () {
              print("tour");

              // Navigator.of(context).pushNamed(
              //   OrderTourScreen.routeName,
              //   arguments: tour.id,
              // );
            },
            icon: const Icon(
              Icons.new_label,
              color: Colors.blue,
            )));
  }
}
