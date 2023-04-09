import 'package:flutter/material.dart';
import '../tours/tour_grid.dart';

class FavoriteToursScreen extends StatefulWidget {
  static const routeName = '/tour-favorites';

  const FavoriteToursScreen({super.key});

  @override
  State<FavoriteToursScreen> createState() => _FavoriteToursScreenState();
}

class _FavoriteToursScreenState extends State<FavoriteToursScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HuKoTravel'),
        actions: <Widget>[buildBookingIcon(), buildRingIcon()],
      ),
      body: const ToursGrid(true),
    );
  }

  Widget buildBookingIcon() {
    return IconButton(
        onPressed: () {
          print('Ban da nhan');
        },
        icon: const Icon(
          Icons.card_travel,
        ));
  }

  Widget buildRingIcon() {
    return IconButton(
        onPressed: () {
          print('Ban da nhan');
        },
        icon: const Icon(
          Icons.notifications_none_outlined,
        ));
  }
}
