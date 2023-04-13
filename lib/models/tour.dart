import 'package:flutter/material.dart';
// part 'sub_image.dart';

class Tour {
  final String? id;
  final String title;
  final String startDate;
  final String endDate;
  final int price;
  final String imageUrl;
  final String cuisine;
  final String customerType;
  final String description;
  final String destinations;
  final String gatheringSite;
  final String hotel;
  final String phone;
  final String tourGuide;
  final String vehicle;
  final List<String> subImages;
  final ValueNotifier<bool> _isFavorite;
  Tour({
    this.id,
    required this.title,
    required this.imageUrl,
    required this.startDate,
    required this.endDate,
    required this.price,
    required this.cuisine,
    required this.customerType,
    required this.description,
    required this.destinations,
    required this.gatheringSite,
    required this.hotel,
    required this.phone,
    required this.tourGuide,
    required this.vehicle,
    required this.subImages,
    isFavorite = false,
  }) : _isFavorite = ValueNotifier(isFavorite);

  set isFavorite(bool newValue) {
    _isFavorite.value = newValue;
  }

  bool get isFavorite {
    return _isFavorite.value;
  }

  ValueNotifier<bool> get isFavoriteListenable {
    return _isFavorite;
  }

  Tour copyWith({
    String? id,
    String? title,
    String? imageUrl,
    // DateTime? startDate,
    // DateTime? endDate,
    String? startDate,
    String? endDate,
    int? price,
    String? cuisine,
    String? customerType,
    String? description,
    String? destinations,
    String? gatheringSite,
    String? hotel,
    String? phone,
    String? tourGuide,
    String? vehicle,
    List<String>? subImages,
    bool? isFavorite,
  }) {
    return Tour(
        id: id ?? this.id,
        title: title ?? this.title,
        imageUrl: imageUrl ?? this.imageUrl,
        startDate: startDate ?? this.startDate,
        endDate: endDate ?? this.endDate,
        price: price ?? this.price,
        cuisine: cuisine ?? this.cuisine,
        customerType: customerType ?? this.customerType,
        description: description ?? this.description,
        destinations: destinations ?? this.destinations,
        gatheringSite: gatheringSite ?? this.gatheringSite,
        hotel: hotel ?? this.hotel,
        phone: phone ?? this.phone,
        tourGuide: tourGuide ?? this.tourGuide,
        vehicle: vehicle ?? this.vehicle,
        subImages: subImages ?? this.subImages,
        isFavorite: isFavorite ?? this.isFavorite);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'imageUrl': imageUrl,
      'startDate': startDate,
      'endDate': endDate,
      'price': price,
      'cuisine': cuisine,
      'customerType': customerType,
      'description': description,
      'destinations': destinations,
      'gatheringSite': gatheringSite,
      'hotel': hotel,
      'phone': phone,
      'tourGuide': tourGuide,
      'vehicle': vehicle,
      'subImages': subImages,
    };
  }

  static Tour fromJson(Map<String, dynamic> json) {
    return Tour(
      id: json['id'],
      title: json['title'],
      imageUrl: json['imageUrl'],
      startDate: json['startDate'],
      endDate: json['endDate'],
      price: json['price'],
      cuisine: json['cuisine'],
      customerType: json['customerType'],
      description: json['description'],
      destinations: json['destinations'],
      gatheringSite: json['gatheringSite'],
      hotel: json['hotel'],
      phone: json['phone'],
      tourGuide: json['tourGuide'],
      vehicle: json['vehicle'],
      subImages: List<String>.from(json['subImages']),
    );
  }
}
