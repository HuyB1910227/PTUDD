import 'package:flutter/material.dart';
import 'favorite_item_card.dart';


class FavoritItemListCard extends StatelessWidget {
  FavoritItemListCard({super.key});

  final List<FavoriteItemCard> _itemlist = [
    const FavoriteItemCard(),
    const FavoriteItemCard(),
    const FavoriteItemCard(),
    const FavoriteItemCard(),
    const FavoriteItemCard(),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
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
        );
  }
}
