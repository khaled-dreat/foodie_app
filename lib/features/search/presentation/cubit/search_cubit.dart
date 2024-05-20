import 'package:bloc/bloc.dart';
import 'package:foodie_app/features/search/domain/entities/food_entite.dart';
import 'package:foodie_app/features/search/domain/usecases/srh_food_use_case.dart';
part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit({required this.srhFoodUseCase}) : super(SearchInitial());

  final SrhFoodUseCase srhFoodUseCase;

  Future<void> srhFood({required String srhKey}) async {
    emit(SearchLoading());
    var result = await srhFoodUseCase.call(srhKey);
    result.fold(
      (failure) {
        emit(SearchFailure(errMessage: failure.message));
      },
      (foodList) {
        emit(SearchSuccess(foodList: foodList));
      },
    );
  }
}
