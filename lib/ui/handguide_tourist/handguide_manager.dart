import 'dart:convert';
import 'package:flutter/services.dart';
import '../../models/handguide_tourist.dart';

class HandGuideManager {
  Future<List<HandGuideTourist>> getHandGuideTourist() async {
    await Future.delayed(const Duration(milliseconds: 1000));
    final data = await _loadAsset("assets/handguide-tourist.json");

    final Map<String, dynamic> json = jsonDecode(data);

    if (json['handguide_tourist'] != null) {
      final handGuideTourists = <HandGuideTourist>[];
      json['handguide_tourist'].forEach((element) {
        // print(element);
        handGuideTourists.add(HandGuideTourist.fromJson(element));
      });
      return handGuideTourists;
    } else {
      return [];
    }
  }

  Future<String> _loadAsset(String path) async {
    return rootBundle.loadString(path);
  }
}
