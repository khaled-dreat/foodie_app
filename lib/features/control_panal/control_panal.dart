import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:foodie_app/features/home/data/models/m_food.dart';

class ControlPanl extends StatelessWidget {
  static const String nameRoute = "ControlPanl";
  const ControlPanl({super.key});

  @override
  Widget build(BuildContext context) {
    List<FoodModel> foodModels = [
      FoodModel(
        id: 1,
        name: "Burger",
        img:
            "https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8QnVyZ2VyfGVufDB8fDB8fHww",
        active: true,
        price: 5.99,
        isFreeDelivery: true,
        details: "Delicious beef burger with cheese and lettuce",
        rating: 4.5,
        size: "Medium",
        restaurantID: 101,
        offers: ["Buy 1 Get 1 Free", "20% off on weekends"],
      ),
      FoodModel(
        id: 2,
        name: "Pizza",
        img:
            "https://images.unsplash.com/photo-1513104890138-7c749659a591?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8UGl6emF8ZW58MHx8MHx8fDA%3D",
        active: true,
        price: 8.99,
        isFreeDelivery: false,
        details: "Pepperoni pizza with extra cheese",
        rating: 4.7,
        size: "Large",
        restaurantID: 102,
        offers: ["Free drink with purchase", "10% off on Mondays"],
      ),
      FoodModel(
        id: 3,
        name: "Pasta",
        img:
            "https://images.unsplash.com/photo-1621996346565-e3dbc646d9a9?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8UGFzdGF8ZW58MHx8MHx8fDA%3D",
        active: false,
        price: 7.99,
        isFreeDelivery: true,
        details: "Creamy Alfredo pasta with chicken",
        rating: 4.3,
        size: "Small",
        restaurantID: 103,
        offers: ["Free garlic bread", "15% off for students"],
      ),
      FoodModel(
        id: 4,
        name: "Salad",
        img:
            "https://images.unsplash.com/photo-1512621776951-a57141f2eefd?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8U2FsYWR8ZW58MHx8MHx8fDA%3D",
        active: true,
        price: 4.99,
        isFreeDelivery: true,
        details: "Fresh garden salad with vinaigrette",
        rating: 4.2,
        size: "Large",
        restaurantID: 104,
        offers: ["Free dressing on the side", "Buy 2 Get 1 Free"],
      ),
      FoodModel(
        id: 5,
        name: "Sushi",
        img:
            "https://images.unsplash.com/photo-1553621042-f6e147245754?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fFN1c2hpfGVufDB8fDB8fHww",
        active: true,
        price: 12.99,
        isFreeDelivery: false,
        details: "Assorted sushi platter with wasabi and soy sauce",
        rating: 4.8,
        size: "Medium",
        restaurantID: 105,
        offers: ["Free miso soup", "20% off for new customers"],
      ),
      FoodModel(
        id: 6,
        name: "Taco",
        img:
            "https://images.unsplash.com/photo-1599974579688-8dbdd335c77f?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8VGFjb3xlbnwwfHwwfHx8MA%3D%3D",
        active: true,
        price: 3.99,
        isFreeDelivery: true,
        details: "Spicy beef taco with salsa and cheese",
        rating: 4.6,
        size: "Small",
        restaurantID: 106,
        offers: ["Buy 2 Get 1 Free", "10% off on Tuesdays"],
      ),
      FoodModel(
        id: 7,
        name: "Ice Cream",
        img:
            "https://images.unsplash.com/photo-1560008581-09826d1de69e?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8aWNlJTIwY3JlYW18ZW58MHx8MHx8fDA%3D",
        active: false,
        price: 2.99,
        isFreeDelivery: false,
        details: "Vanilla ice cream with chocolate syrup",
        rating: 4.1,
        size: "Medium",
        restaurantID: 107,
        offers: ["Free toppings", "15% off on weekends"],
      ),
      FoodModel(
        id: 8,
        name: "Sandwich",
        img:
            "https://images.unsplash.com/photo-1619096252214-ef06c45683e3?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fFNhbmR3aWNofGVufDB8fDB8fHww",
        active: true,
        price: 5.49,
        isFreeDelivery: true,
        details: "Ham and cheese sandwich with lettuce and tomato",
        rating: 4.4,
        size: "Large",
        restaurantID: 108,
        offers: ["Free drink with purchase", "20% off for members"],
      ),
      FoodModel(
        id: 9,
        name: "Smoothie",
        img:
            "https://images.unsplash.com/photo-1575159249868-df58bf5e09ec?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fFNtb290aGllfGVufDB8fDB8fHww",
        active: true,
        price: 4.49,
        isFreeDelivery: false,
        details: "Mixed berry smoothie with yogurt",
        rating: 4.7,
        size: "Large",
        restaurantID: 109,
        offers: ["Buy 1 Get 1 Half Off", "10% off for students"],
      ),
      FoodModel(
        id: 10,
        name: "Fried Chicken",
        img:
            "https://images.unsplash.com/photo-1626645738196-c2a7c87a8f58?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8RnJpZWQlMjBDaGlja2VufGVufDB8fDB8fHww",
        active: true,
        price: 6.99,
        isFreeDelivery: true,
        details: "Crispy fried chicken with fries",
        rating: 4.5,
        size: "Medium",
        restaurantID: 110,
        offers: ["Free extra sauce", r"15% off on orders over $20"],
      ),
      FoodModel(
        id: 11,
        name: "Steak",
        img:
            "https://images.unsplash.com/photo-1565299715199-866c917206bb?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8U3RlYWt8ZW58MHx8MHx8fDA%3D",
        active: true,
        price: 15.99,
        isFreeDelivery: false,
        details: "Grilled steak with mashed potatoes and green beans",
        rating: 4.9,
        size: "Large",
        restaurantID: 111,
        offers: ["Free side salad", r"10% off on orders over $50"],
      ),
      FoodModel(
        id: 12,
        name: "Falafel",
        img:
            "https://images.unsplash.com/photo-1558458601-0d69a278b8e6?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTV8fEZhbGFmZWx8ZW58MHx8MHx8fDA%3D",
        active: true,
        price: 4.99,
        isFreeDelivery: true,
        details: "Falafel wrap with hummus and vegetables",
        rating: 4.3,
        size: "Medium",
        restaurantID: 112,
        offers: ["Free drink with purchase", "Buy 1 Get 1 Free on Fridays"],
      ),
      FoodModel(
        id: 13,
        name: "Pancakes",
        img:
            "https://images.unsplash.com/photo-1612182062966-c8fe45ecbf73?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fFBhbmNha2VzfGVufDB8fDB8fHww",
        active: false,
        price: 5.99,
        isFreeDelivery: false,
        details: "Stack of pancakes with syrup and butter",
        rating: 4.4,
        size: "Large",
        restaurantID: 113,
        offers: ["Free extra syrup", "20% off on weekends"],
      ),
      FoodModel(
        id: 14,
        name: "Sushi Roll",
        img:
            "https://images.unsplash.com/photo-1593614201641-6f16f8e41a4e?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8U3VzaGklMjBSb2xsfGVufDB8fDB8fHww",
        active: true,
        price: 9.99,
        isFreeDelivery: true,
        details: "Spicy tuna sushi roll with avocado and cucumber",
        rating: 4.8,
        size: "Medium",
        restaurantID: 114,
        offers: ["Free miso soup", "15% off for new customers"],
      ),
      FoodModel(
        id: 15,
        name: "Curry",
        img:
            "https://images.unsplash.com/photo-1596797038530-2c107229654b?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fEN1cnJ5fGVufDB8fDB8fHww",
        active: true,
        price: 8.49,
        isFreeDelivery: true,
        details: "Chicken curry with rice and naan bread",
        rating: 4.7,
        size: "Large",
        restaurantID: 115,
        offers: ["Free appetizer with purchase", "10% off for students"],
      ),
      FoodModel(
        id: 16,
        name: "Pad Thai",
        img:
            "https://images.unsplash.com/photo-1626804475315-9644b37a2fe4?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8UGFkJTIwVGhhaXxlbnwwfHwwfHx8MA%3D%3D",
        active: true,
        price: 7.99,
        isFreeDelivery: true,
        details: "Traditional Thai stir-fried noodles with shrimp",
        rating: 4.6,
        size: "Medium",
        restaurantID: 116,
        offers: ["Free spring roll", r"15% off on orders over $30"],
      ),
      FoodModel(
        id: 17,
        name: "Chocolate Cake",
        img:
            "https://images.unsplash.com/photo-1578985545062-69928b1d9587?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8Q2hvY29sYXRlJTIwQ2FrZXxlbnwwfHwwfHx8MA%3D%3D",
        active: false,
        price: 4.49,
        isFreeDelivery: false,
        details: "Rich chocolate cake with a creamy frosting",
        rating: 4.9,
        size: "Large",
        restaurantID: 117,
        offers: ["Free coffee with purchase", "20% off on birthdays"],
      ),
      FoodModel(
        id: 18,
        name: "Fish and Chips",
        img:
            "https://images.unsplash.com/photo-1579208030886-b937da0925dc?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8RmlzaCUyMGFuZCUyMENoaXBzfGVufDB8fDB8fHww",
        active: true,
        price: 9.99,
        isFreeDelivery: true,
        details: "Crispy fried fish with a side of thick-cut fries",
        rating: 4.5,
        size: "Large",
        restaurantID: 118,
        offers: ["Free tartar sauce", r"10% off on orders over $40"],
      ),
      FoodModel(
        id: 19,
        name: "Vegetarian Pizza",
        img:
            "https://images.unsplash.com/photo-1595708684082-a173bb3a06c5?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fFZlZ2V0YXJpYW4lMjBQaXp6YXxlbnwwfHwwfHx8MA%3D%3D",
        active: true,
        price: 11.99,
        isFreeDelivery: false,
        details: "Pizza loaded with fresh vegetables and mozzarella cheese",
        rating: 4.4,
        size: "Large",
        restaurantID: 119,
        offers: ["Buy 1 Get 1 Half Off", "Free delivery on weekends"],
      ),
      FoodModel(
        id: 20,
        name: "BBQ Ribs",
        img:
            "https://plus.unsplash.com/premium_photo-1663012872761-33dd73e292cc?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8QkJRJTIwUmlic3xlbnwwfHwwfHx8MA%3D%3D",
        active: true,
        price: 14.99,
        isFreeDelivery: true,
        details: "Tender BBQ ribs with a side of coleslaw and cornbread",
        rating: 4.7,
        size: "Large",
        restaurantID: 120,
        offers: ["Free extra sauce", "20% off for repeat customers"],
      ),
    ];

    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
// استدعاء الدالة لرفع البيانات إلى Firebase
              uploadDataToFirebase(foodModels);
            },
            child: Text("send")),
      ),
    );
  }
}

void uploadDataToFirebase(List<FoodModel> FoodModels) async {
  // احصل على مرجع لمجموعة الوثائق في قاعدة البيانات Firestore
  CollectionReference collectionRef =
      FirebaseFirestore.instance.collection('FoodModels');

  // قم بتحويل كل كائن FoodModel إلى وثيقة وأضفها إلى المجموعة
  for (FoodModel model in FoodModels) {
    await collectionRef.add({
      'id': model.id,
      'name': model.name,
      'img': model.img,
      'active': model.active,
      'price': model.price,
      'isFreeDelivery': model.isFreeDelivery,
      'details': model.details,
      'rating': model.rating,
      'size': model.size,
      'restaurantID': model.restaurantID,
      'offers': model.offers,
    });
  }
}
