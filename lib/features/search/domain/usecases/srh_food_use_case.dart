import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:foodie_app/features/search/domain/repositories/srh_reop.dart';

class SrhFoodUseCase {
  final SrhRepo srhRepo;

  SrhFoodUseCase({required this.srhRepo});

  Stream<QuerySnapshot<Map<String, dynamic>>> call([String? param]) {
    return srhRepo.srhQuery(param!);
  }
}
