import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:foodie_app/features/search/data/datasources/srh_remote_data_source.dart';
import 'package:foodie_app/utils/constant/app_failure.dart';

import '../../domain/entities/food_entite.dart';
import '../../domain/repositories/srh_reop.dart';

class SrhRepoEmpl extends SrhRepo {
  final SrhRemoteDataSource srhRemoteDataSource;

  SrhRepoEmpl({required this.srhRemoteDataSource});

  @override
  Stream<QuerySnapshot<Map<String, dynamic>>> srhQuery(String srhText) {
    // Corrected signature
    return srhRemoteDataSource.srhQuery(srhText: srhText);
  }
}
