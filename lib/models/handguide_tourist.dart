part "description_handguide.dart";

class HandGuideTourist {
  String id;
  String name;
  String imageUrl;
  List<Descriptions> descriptions;

  HandGuideTourist({
    required this.id,
    required this.name,
    required this.imageUrl,
    this.descriptions = const [],
  });

  factory HandGuideTourist.fromJson(Map<String, dynamic> json) {
    final descriptions = <Descriptions>[];

    if (json["descriptions"] != null) {
      json["descriptions"].forEach((element) {
        descriptions.add(Descriptions.fromJson(element));
      });
    }
    return HandGuideTourist(
      id: json["id"] ?? "",
      name: json["name"] ?? "",
      imageUrl: json["imageUrl"] ?? "",
      descriptions: descriptions,
    );
  }
}
