import '../../models/tour.dart';
import '../../models/auth_token.dart';
import '../../services/tours_service.dart';
import 'package:flutter/foundation.dart';
class ToursManager with ChangeNotifier {
  final ToursService _toursService;
  List<Tour> _items = [
    // Tour(
    //   id: 'Z839-J726',
    //   title: 'Tour Miền Nam', 
    //   imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/0/09/B%E1%BB%9D_%C4%91%C3%B4ng_c%E1%BA%A7u_R%E1%BB%93ng.jpg',
      // startDate: DateTime(2023, 03, 12), 
      // endDate: DateTime(2023, 03, 18), 
    //   startDate: "3/12/2023",
    //   endDate: "3/18/2023",
    //   price: 7000000, 
    //   slot: 6,
    //   isFavorite: false,
    // ),
    // Tour(
    //   id: 'Z839-J726',
    //   title: 'Tour Miền Nam', 
    //   imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/0/09/B%E1%BB%9D_%C4%91%C3%B4ng_c%E1%BA%A7u_R%E1%BB%93ng.jpg',
    //   startDate: DateTime(2023, 03, 12), 
    //   endDate: DateTime(2023, 03, 18), 
    //   price: 7000000, 
    //   slot: 6,
    //   isFavorite: true,
    // ),
    // Tour(
    //   id: 'Z839-J726',
    //   title: 'Tour Miền Nam', 
    //   imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/0/09/B%E1%BB%9D_%C4%91%C3%B4ng_c%E1%BA%A7u_R%E1%BB%93ng.jpg',
    //   startDate: DateTime(2023, 03, 12), 
    //   endDate: DateTime(2023, 03, 18), 
    //   price: 7000000, 
    //   slot: 6,
    //   isFavorite: false,
    // ),
    // Tour(
    //   id: 'Z839-J726',
    //   title: 'Tour Miền Nam', 
    //   imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/0/09/B%E1%BB%9D_%C4%91%C3%B4ng_c%E1%BA%A7u_R%E1%BB%93ng.jpg',
    //   startDate: DateTime(2023, 03, 12), 
    //   endDate: DateTime(2023, 03, 18), 
    //   price: 7000000, 
    //   slot: 6,
    //   isFavorite: true,
    // )
  ];

  // final ToursService _toursService;

  ToursManager([AuthToken? authToken]) 
  : _toursService = ToursService(authToken);

  set authToken(AuthToken? authToken) {
    _toursService.authToken = authToken;
  }
  Future<void> fetchTours() async {
    _items = await _toursService.fetchTours();
    print(itemCount);
    notifyListeners();
  }
  int get itemCount {
    return _items.length;
  }
  
  List<Tour> get items {
    return [..._items];
  }

  List<Tour> get favoriteItems {
    return _items.where((item) => item.isFavorite).toList();
  }

  Future<void> toggleFavoriteStatus(Tour tour) async {
    final savedStatus = tour.isFavorite;
    tour.isFavorite = !savedStatus;
    if (!await _toursService.saveFavoriteStatus(tour)) {
      tour.isFavorite = savedStatus;
    }  
  }

  Tour? findById(String id) {
    try {
      return _items.firstWhere((element) => element.id == id);
    } catch (error) {
      return null;
    }
  }
}