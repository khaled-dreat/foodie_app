import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:foodie_app/features/home/data/models/m_food.dart';

import '../../../../utils/constant/app_firebase_key.dart';
import '../../domain/entities/food_entite.dart';

abstract class SrhRemoteDataSource {
  // * Fetch All Books
  Future<List<FoodEntity>> srhQuery({String srhText});
}

class HomeRemoteDataSourceImpl implements SrhRemoteDataSource {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  @override
  Future<List<FoodEntity>> srhQuery({String? srhText}) async {
    Query<Map<String, dynamic>> query = firestore
        .collection(AppFirebaseKey.foodModels)
        .orderBy(AppFirebaseKey.name)
        .startAt([srhText]).endAt(["$srhText\uf8ff"]);

    QuerySnapshot<Map<String, dynamic>> querySnapshot = await query.get();

    List<FoodEntity> foodList = getFoodList(querySnapshot.docs);
    return foodList;
  }
}

List<FoodEntity> getFoodList(
    List<QueryDocumentSnapshot<Map<String, dynamic>>> docs) {
  return docs.map((doc) => FoodEntity.fromMap(doc.data())).toList();
}
