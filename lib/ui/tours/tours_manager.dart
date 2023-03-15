import '../../models/tour.dart';

class TourManager {
  final List<Tour> _items = [
    Tour(
      id: 'Z839-J726',
      title: 'Tour Miền Nam', 
      imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/0/09/B%E1%BB%9D_%C4%91%C3%B4ng_c%E1%BA%A7u_R%E1%BB%93ng.jpg',
      startDate: DateTime(2023, 03, 12), 
      endDate: DateTime(2023, 03, 18), 
      price: 7000000, 
      slot: 6,

    ),
    Tour(
      id: 'Z839-J726',
      title: 'Tour Miền Nam', 
      imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/0/09/B%E1%BB%9D_%C4%91%C3%B4ng_c%E1%BA%A7u_R%E1%BB%93ng.jpg',
      startDate: DateTime(2023, 03, 12), 
      endDate: DateTime(2023, 03, 18), 
      price: 7000000, 
      slot: 6
    ),
    Tour(
      id: 'Z839-J726',
      title: 'Tour Miền Nam', 
      imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/0/09/B%E1%BB%9D_%C4%91%C3%B4ng_c%E1%BA%A7u_R%E1%BB%93ng.jpg',
      startDate: DateTime(2023, 03, 12), 
      endDate: DateTime(2023, 03, 18), 
      price: 7000000, 
      slot: 6
    ),
    Tour(
      id: 'Z839-J726',
      title: 'Tour Miền Nam', 
      imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/0/09/B%E1%BB%9D_%C4%91%C3%B4ng_c%E1%BA%A7u_R%E1%BB%93ng.jpg',
      startDate: DateTime(2023, 03, 12), 
      endDate: DateTime(2023, 03, 18), 
      price: 7000000, 
      slot: 6
    )
  ];

  int get itemCount {
    return _items.length;
  }

  List<Tour> get items {
    return [..._items];
  }

  List<Tour> get favoriteItems {
    return _items.where((item) => item.isFavorite).toList();
  }
}