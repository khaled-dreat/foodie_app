import 'dart:convert';

class FoodEntity {
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

  FoodEntity({
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

  Map<String, dynamic> toMap() {
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

  factory FoodEntity.fromMap(Map<String, dynamic> map) {
    return FoodEntity(
      id: map['id'] as int,
      name: map['name'] as String,
      img: map['img'] as String,
      active: map['active'] as bool,
      price: map['price'] as double,
      isFreeDelivery: map['isFreeDelivery'] as bool,
      details: map['details'] as String,
      rating: map['rating'] as double,
      size: map['size'] as String,
      restaurantID: map['restaurantID'] as int,
      offers: List<String>.from(map['offers'] as List<dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory FoodEntity.fromJson(String source) =>
      FoodEntity.fromMap(json.decode(source) as Map<String, dynamic>);
}
