import 'package:flutter/material.dart';
import 'package:hukotravel/models/tour.dart';
import './tour_detail_card/overview.dart';
import './tour_detail_card/notes.dart';
import './tour_detail_card/detail.dart';

class TourDetailScreen extends StatefulWidget {
  static const routeName = '/tour-detail';
  final Tour tour;
  const TourDetailScreen(this.tour, {Key? key}) : super(key: key);

  @override
  State<TourDetailScreen> createState() => _TourDetailScreenState();
}

class _TourDetailScreenState extends State<TourDetailScreen> {
  @override
  Widget build(BuildContext context) {
    // print(widget.tour.title);
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              elevation: 0.0,
              pinned: true,
              backgroundColor: Colors.grey,
              expandedHeight: 300,
              flexibleSpace: FlexibleSpaceBar(
                title: Container(
                  margin: const EdgeInsets.only(bottom: 30.0),
                  child: Card(
                    color: Colors.black.withOpacity(0.1),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        widget.tour.title,
                        style: const TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                background: Image(
                  image: NetworkImage(widget.tour.imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(kToolbarHeight),
                child: Container(
                  padding: const EdgeInsets.all(3.0),
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30.0),
                    boxShadow: const <BoxShadow>[
                      BoxShadow(
                        color: Color.fromARGB(64, 0, 0, 0),
                        blurRadius: 5,
                      ),
                    ],
                  ),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: TabBar(
                      unselectedLabelColor: Colors.black,
                      tabs: const [
                        Tab(text: "Tổng quan"),
                        Tab(text: "Chi tiết"),
                        Tab(text: "Lưu ý"),
                      ],
                      indicator: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 650.0,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TabBarView(
                    children: [
                      OverView(widget.tour),
                      const Detail(),
                      const Notes(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Color.fromARGB(64, 0, 0, 0),
              blurRadius: 5,
            ),
          ],
        ),
        height: 75,
        padding: EdgeInsets.all(12.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text(
                  "1.000.000",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                      color: Colors.orange),
                ),
                Text(
                  " vnd / Khách",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 223, 134, 0)),
                ),
              ],
            ),
            Card(
              color: const Color.fromARGB(255, 251, 51, 37),
              shadowColor: Colors.grey,
              child: Container(
                height: 50,
                width: 130,
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.shopping_cart_outlined,
                        color: Colors.white,
                      ),
                      onPressed: () => Text("123"),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Text(
                        "Đặt ngay",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
