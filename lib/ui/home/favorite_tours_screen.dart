import 'package:flutter/material.dart';
import 'package:hukotravel/ui/screens.dart';
import '../tours/tour_grid.dart';
import 'package:provider/provider.dart';
class FavoriteToursScreen extends StatefulWidget {
  static const routeName = '/tour-favorites';

  const FavoriteToursScreen({super.key});

  @override
  State<FavoriteToursScreen> createState() => _FavoriteToursScreenState();
}

class _FavoriteToursScreenState extends State<FavoriteToursScreen> {
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
        actions: <Widget>[buildBookingIcon(), buildRingIcon()],
      ),
      body: FutureBuilder(
          future: _fetchTours,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return const ToursGrid(true);
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
      }),
      // body: const ToursGrid(true),
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
