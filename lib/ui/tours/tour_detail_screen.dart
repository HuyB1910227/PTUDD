import 'package:flutter/material.dart';
import './tour_detail_card/overview.dart';
import './tour_detail_card/notes.dart';
import './tour_detail_card/detail.dart';

class TourDetailScreen extends StatefulWidget {
  const TourDetailScreen({Key? key}) : super(key: key);

  @override
  State<TourDetailScreen> createState() => _TourDetailScreenState();
}

class _TourDetailScreenState extends State<TourDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            elevation: 0.0,
            pinned: true,
            backgroundColor: Colors.grey,
            expandedHeight: 300,
            flexibleSpace: const FlexibleSpaceBar(
              background: Image(
                image: AssetImage("assets/BaiViet.png"),
                fit: BoxFit.cover,
              ),
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(kToolbarHeight),
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
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
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 1000.0,
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: TabBarView(
                  children: [
                    OverView(),
                    const Detail(),
                    const Notes(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
