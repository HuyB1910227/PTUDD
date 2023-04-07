import 'dart:convert';

import 'package:http/http.dart' as http;
import '../models/tour.dart';
import '../models/auth_token.dart';

import 'firebase_service.dart';

class ToursService extends FirebaseService {
  ToursService([AuthToken? authToken]) : super(authToken);

  Future<List<Tour>> fetchTours([bool filterByUser = false]) async {
    final List<Tour> tours = [];

    try {
     
      // final filters = filterByUser ? 'orderBy="creatorId"&equalTo="$userId"': '';
      final toursUrl = Uri.parse('$databaseUrl/tours.json?auth=$token');
      // final toursUrl = Uri.parse('https://huko-travel-default-rtdb.asia-southeast1.firebasedatabase.app//tours.json?auth=eyJhbGciOiJSUzI1NiIsImtpZCI6Ijg3YzFlN2Y4MDAzNGJiYzgxYjhmMmRiODM3OTIxZjRiZDI4N2YxZGYiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL3NlY3VyZXRva2VuLmdvb2dsZS5jb20vaHVrby10cmF2ZWwiLCJhdWQiOiJodWtvLXRyYXZlbCIsImF1dGhfdGltZSI6MTY4MDg1NTQ4MSwidXNlcl9pZCI6IndPUkpZQzkzenFPb2NFRThJYnNRYWRKWFpCczIiLCJzdWIiOiJ3T1JKWUM5M3pxT29jRUU4SWJzUWFkSlhaQnMyIiwiaWF0IjoxNjgwODU1NDgxLCJleHAiOjE2ODA4NTkwODEsImVtYWlsIjoiZ2lhaHV5ZG8xOEBnbWFpbC5jb20iLCJlbWFpbF92ZXJpZmllZCI6ZmFsc2UsImZpcmViYXNlIjp7ImlkZW50aXRpZXMiOnsiZW1haWwiOlsiZ2lhaHV5ZG8xOEBnbWFpbC5jb20iXX0sInNpZ25faW5fcHJvdmlkZXIiOiJwYXNzd29yZCJ9fQ.qPYtQfb6_agaBE8BDdvCUj_OjW84uC62vktSexyXd3vAH_j5WtdnNxZhzUdTgdaX1srBVmfsb--KH8NfX8Mts8qW3GU74UhDHYzl3o3iZs1N2aiorlFohRYgM1W6o8F9qrdfpR4DiKiknVSnZbmH6ztX5k57MKWhLZbIGFPs3GVccNGhr-vR_0SeqJQ4udBwUd1_8Tx6sfsfzmkIFjHj4FW_Hu6GOOD6Edk7Ix1nWZcOXk-Q6EOAnr13CMgSerxfSK_oeeyCqOJXexxIQzS7CO2jqTkhz1muiVjxBAbfWT42c8uZx8ueDzw2Av6zfmG9IX850HI4l3bZyYWWud_04g');
      final response = await http.get(toursUrl);
      final toursMap = json.decode(response.body) as Map<String, dynamic>;
      print(toursUrl);
      if(response.statusCode != 200) {
        print(toursMap['error']);
        return tours;
      }

      final userFavoritesUrl = Uri.parse('$databaseUrl/userFavorites/$userId.json?auth=$token');
      final userFavoritesResponse = await http.get(userFavoritesUrl);
      final userFavoritesMap = json.decode(userFavoritesResponse.body);

      toursMap.forEach((tourId, tour) {
        print(tourId);
        print(tour);
        final isFavorite = (userFavoritesMap == null)
              ? false
              : (userFavoritesMap[tourId] ?? false);
          tours.add(
            Tour.fromJson({
              'id': tourId,
              ...tour,
            }).copyWith(isFavorite: isFavorite),
          );
      });
      print(tours);
      return tours;
    } catch (error) {
      print(error);
      return tours;
    }
  }


  Future<bool> saveFavoriteStatus(Tour tour) async {
    try {
      final url = Uri.parse('$databaseUrl/userFavorites/$userId/${tour.id}.json?auth=$token');
      final response = await http.put(
        url,
        body: json.encode(
          tour.isFavorite,
        )
      );

      if (response.statusCode != 200) {
        throw Exception(json.decode(response.body)['error']);
      }

      return true;
    } catch (error) {
      print(error);
      return false;
    }
  }
}

