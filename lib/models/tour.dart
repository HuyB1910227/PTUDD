
class Tour {
  final String? id;
  final String title;
  final DateTime startDate;
  final DateTime endDate;
  final double price;
  final int slot;
  final bool isFavorite;
  final String imageUrl;
  Tour({
    this.id,
    required this.title,
    required this.imageUrl,
    required this.startDate,
    required this.endDate,
    required this.price,
    required this.slot,
    this.isFavorite = false,
  });

  Tour copyWith({
    String? id,
    String? title,
    String? imageUrl,
    DateTime? startDate,
    DateTime? endDate,
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
    

}