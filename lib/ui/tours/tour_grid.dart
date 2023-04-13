import 'package:flutter/material.dart';
import 'package:hukotravel/models/tour.dart';
import 'package:provider/provider.dart';
import 'tour_grid_tile.dart';
import 'tours_manager.dart';

class ToursGrid extends StatelessWidget {
  final bool showFavorites;
  const ToursGrid(this.showFavorites, {super.key});

  @override
  Widget build(BuildContext context) {
    final tours = context.select<ToursManager, List<Tour>>((toursManager) =>
        showFavorites ? toursManager.favoriteItems : toursManager.items);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
          itemCount: tours.length,
          itemBuilder: (context, index) => TourGridTile(tours[index]),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.8,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10)),
    );
  }
}
