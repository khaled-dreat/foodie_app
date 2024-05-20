import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:foodie_app/features/search/data/datasources/srh_remote_data_source.dart';
import 'package:foodie_app/utils/constant/app_failure.dart';

import '../../domain/entities/food_entite.dart';
import '../../domain/repositories/srh_reop.dart';

class SrhRepoImpl extends SrhRepo {
  final SrhRemoteDataSource srhRemoteDataSource;

  SrhRepoImpl({required this.srhRemoteDataSource});
  @override
  Future<Either<Failure, List<FoodEntity>>> srhQuery({String? srhText}) async {
    try {
      List<FoodEntity> foodList;
      foodList = await srhRemoteDataSource.srhQuery(srhText: srhText!);
      return right(foodList);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDiorError(e));
      }
      return left(ServerFailure(message: e.toString()));
    }
  }
}
