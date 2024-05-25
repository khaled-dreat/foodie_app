import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:foodie_app/features/home/data/models/m_food.dart';

import '../../../../utils/constant/app_firebase_key.dart';
import '../../domain/entities/food_entite.dart';

abstract class SrhRemoteDataSource {
  // * Fetch All Books
  Stream<QuerySnapshot<Map<String, dynamic>>> srhQuery({String srhText});
}

class SrhRemoteDataSourceEmpl implements SrhRemoteDataSource {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  @override
  Stream<QuerySnapshot<Map<String, dynamic>>> srhQuery({String? srhText}) {
    var query = firestore
        .collection(AppFirebaseKey.foodModels)
        .orderBy(AppFirebaseKey.name)
        .startAt([srhText]).endAt(["$srhText\uf8ff"]).snapshots();

    query;

    return query;
  }
}

List<FoodEntity> getFoodList(var docs) {
  return docs.map((doc) => FoodEntity.fromMap(doc.data())).toList();
}
