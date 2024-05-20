import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';

import '../../../../utils/constant/app_failure.dart';
import '../entities/food_entite.dart';

abstract class SrhRepo {
  Future<Either<Failure, List<FoodEntity>>> srhQuery({String srhText});
}
