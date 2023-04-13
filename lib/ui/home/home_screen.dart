import 'package:flutter/material.dart';
import 'favorite_item_list_card.dart';
import 'search.dart';
import 'discover_more_grid.dart';
import '../handguide_tourist/handguide_detail_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('HuKoTravel'),
          actions: <Widget>[buildBookingIcon(), buildRingIcon()],
        ),
        body: ListView(
          children: [
            const SearchBar(),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                child: const Text(
                  "Địa điểm yêu thích",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            FavoritItemListCard(),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const <Text>[
                  Text(
                    "Khám phá thêm",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            //ex-discovery
            const DiscoverMore(),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const <Text>[
                  Text(
                    "Cẩm nang du lịch",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            //--guide card
            HandGuideDetailSceen(),
          ],
        ));
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
