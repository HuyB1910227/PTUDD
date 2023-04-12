import 'package:flutter/material.dart';
import 'tour_grid.dart';
import '../screens.dart';
import 'package:provider/provider.dart';

class TourOverviewScreen extends StatefulWidget {
  static const routeName = '/tour-items';

  const TourOverviewScreen({super.key});

  @override
  State<TourOverviewScreen> createState() => _TourOverviewScreenState();
}

class _TourOverviewScreenState extends State<TourOverviewScreen> {
  late Future<void> _fetchTours;
  @override
  void initState() {
    super.initState();
    _fetchTours = context.read<ToursManager>().fetchTours();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HuKoTravel'),
        actions: <Widget>[
          buildBookingIcon(),
          buildRingIcon(),
        ],
      ),
      body: FutureBuilder(
          future: _fetchTours,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return const ToursGrid(false);
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          }),
      // body: const ToursGrid(false),
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
