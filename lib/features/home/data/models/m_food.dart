class FoodModel {
  final int id;
  final String name;
  final String img;
  final bool active;
  final double price;
  final bool isFreeDelivery;
  final String details;
  final double rating;
  final String size;
  final int restaurantID;
  final List<String> offers;

  FoodModel({
    required this.id,
    required this.name,
    required this.img,
    required this.active,
    required this.price,
    required this.isFreeDelivery,
    required this.details,
    required this.rating,
    required this.size,
    required this.restaurantID,
    required this.offers,
  });

  factory FoodModel.fromJson(Map<String, dynamic> json) {
    return FoodModel(
      id: json['id'],
      name: json['name'],
      img: json['img'],
      active: json['active'],
      price: json['price'].toDouble(),
      isFreeDelivery: json['isFreeDelivery'],
      details: json['details'],
      rating: json['rating'].toDouble(),
      size: json['size'],
      restaurantID: json['restaurantID'],
      offers: List<String>.from(json['offers']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'img': img,
      'active': active,
      'price': price,
      'isFreeDelivery': isFreeDelivery,
      'details': details,
      'rating': rating,
      'size': size,
      'restaurantID': restaurantID,
      'offers': offers,
    };
  }

  FoodModel copyWith({
    int? id,
    String? name,
    String? img,
    bool? active,
    double? price,
    bool? isFreeDelivery,
    String? details,
    double? rating,
    String? size,
    int? restaurantID,
    List<String>? offers,
  }) {
    return FoodModel(
      id: id ?? this.id,
      name: name ?? this.name,
      img: img ?? this.img,
      active: active ?? this.active,
      price: price ?? this.price,
      isFreeDelivery: isFreeDelivery ?? this.isFreeDelivery,
      details: details ?? this.details,
      rating: rating ?? this.rating,
      size: size ?? this.size,
      restaurantID: restaurantID ?? this.restaurantID,
      offers: offers ?? this.offers,
    );
  }
}
