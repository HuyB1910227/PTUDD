import 'package:flutter/material.dart';
import 'package:hukotravel/ui/tours/tour_detail_card/overview_list_place.dart';

class OverView extends StatelessWidget {
  OverView({super.key});

  final List<OverViewListPlace> _itemlist = [
    const OverViewListPlace(),
    const OverViewListPlace(),
    const OverViewListPlace(),
    const OverViewListPlace(),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          alignment: Alignment.center,
          child: const Text(
            "Thông tin điểm đến",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
              color: Color.fromARGB(255, 0, 50, 91),
            ),
          ),
        ),
        const Card(
          shadowColor: Colors.black,
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 10,
            ),
            child: Text(
              "Năm 2006, Khu dự trữ sinh quyển ven biển và biển đảo Kiên Giang, bao gồm cả huyện Phú Quốc được UNESCO công nhận là Khu dự trữ sinh quyển thế giới đã khiến hòn đảo này dần trở thành cái tên quen thuộc trên bản đồ du lịch quốc tế. Với 150km đường bờ biển, Phú Quốc sở hữu nhiều bãi biển đẹp trải dài từ phía bắc đến phía nam. Đến đây, du khách sẽ bị cuốn hút trước vẻ đẹp đậm chất hoang sơ với sóng êm, gió lặng tại bãi Sao hay không gian trầm mặc kín đáo, biển xanh cát trắng tại bãi Khem.",
              style: TextStyle(
                fontSize: 17.0,
              ),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          alignment: Alignment.center,
          child: const Text(
            "Các địa điểm tham quan",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
              color: Color.fromARGB(255, 0, 50, 91),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10.0),
          height: 170,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              final item = _itemlist[index];
              return item;
            },
            separatorBuilder: (context, index) {
              return const SizedBox(width: 16);
            },
            itemCount: _itemlist.length,
          ),
        ),
      ],
    );
  }
}
