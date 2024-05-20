import 'package:foodie_app/features/search/domain/entities/food_entite.dart';
import 'package:foodie_app/features/search/domain/repositories/srh_reop.dart';
import 'package:dartz/dartz.dart';
import '../../../../utils/constant/app_failure.dart';
import '../../../../utils/usecase/use_case.dart';

class SrhFoodUseCase extends UseCase<List<FoodEntity>, String> {
  final SrhRepo srhRepo;

  SrhFoodUseCase({required this.srhRepo});

  @override
  Future<Either<Failure, List<FoodEntity>>> call([String? param]) async {
    return await srhRepo.srhQuery(srhText: param!);
  }
}
