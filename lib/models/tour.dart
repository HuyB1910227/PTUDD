import 'package:flutter/material.dart';

class Tour {
  final String? id;
  final String title;
  // final DateTime startDate;
  // final DateTime endDate;
  final String startDate;
  final String endDate;
  final double price;
  final int slot;
  
  final String imageUrl;
  final ValueNotifier<bool> _isFavorite;
  Tour({
    this.id,
    required this.title,
    required this.imageUrl,
    required this.startDate,
    required this.endDate,
    required this.price,
    required this.slot,
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
    double? price,
    int? slot,
    bool? isFavorite
  }) {
    return Tour(
    id: id ?? this.id,
    title: title ?? this.title,
    imageUrl: imageUrl ?? this.imageUrl, 
    startDate: startDate ?? this.startDate, 
    endDate: endDate ?? this.endDate, 
    price: price ?? this.price, 
    slot: slot ?? this.slot,
    isFavorite: isFavorite ?? this.isFavorite
    );
  }


  Map<String, dynamic> toJson () {
    return {
      'id': id,
      'title': title,
      'imageUrl': imageUrl,
      'startDate': startDate,
      'endDate': endDate,
      'price': price,
      'slot': slot,
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
      slot: json['slot']
    );
  }
}