import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'favorite_item_card.dart';


class FavoritItemListCard extends StatelessWidget {
  FavoritItemListCard({super.key});

  final List<FavoriteItemCard> _itemlist = [
    FavoriteItemCard("Hà Nội", "125.980.789 lượt thích", "assets/favorite_places/ha-noi.jpg"),
    FavoriteItemCard("Cần Thơ", "224.000.123 lượt thích", "assets/favorite_places/dem-hoa-dang.jpg"),
    FavoriteItemCard("Quảng Ninh", "890.180.789 lượt thích", "assets/favorite_places/sun-world.jpg"),
    FavoriteItemCard("Vịnh Hạ Long", "125.980.789 lượt thích", "assets/favorite_places/vinh-ha-long.jpg"),
    FavoriteItemCard("Phú Quốc", "125.980.789 lượt thích", "assets/favorite_places/Phu_quoc.jpg"),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: _itemlist,
          options: CarouselOptions(
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 5),
            enlargeCenterPage: true,
            aspectRatio: 18/9,
            viewportFraction: 0.4
          )
        )
      ],
    );
  }
}
