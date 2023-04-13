part of 'handguide_tourist.dart';

class Descriptions {
  String title;
  String image;
  String description;

  Descriptions({
    required this.title,
    required this.image,
    required this.description,
  });

  factory Descriptions.fromJson(Map<String, dynamic> json) {
    // print(json["title"]);
    // print(json["image"]);
    // print(json["description"]);
    return Descriptions(
      title: json["title"] ?? "",
      image: json["image"] ?? "",
      description: json["description"] ?? "",
    );
  }
}
