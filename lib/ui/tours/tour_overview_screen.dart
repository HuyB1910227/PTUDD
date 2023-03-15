import 'package:flutter/material.dart';
import 'package:hukotravel/ui/tours/tour_gird.dart';

class TourOverviewScreen extends StatefulWidget {
  const TourOverviewScreen({super.key});

  @override
  State<TourOverviewScreen> createState() => _TourOverviewScreenState();
}

class _TourOverviewScreenState extends State<TourOverviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HuKoTravel'),
        actions: <Widget>[buildBookingIcon(), buildRingIcon()],
      ),
      body: const ToursGrid(),
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