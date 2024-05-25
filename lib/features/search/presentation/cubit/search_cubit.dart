import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:foodie_app/features/search/domain/entities/food_entite.dart';
import 'package:foodie_app/features/search/domain/usecases/srh_food_use_case.dart';
part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit({required this.srhFoodUseCase}) : super(SearchInitial());

  final SrhFoodUseCase srhFoodUseCase;

  Stream<QuerySnapshot<Map<String, dynamic>>> srhFood(
      {required String srhKey}) {
    try {
      emit(SearchLoading());
      return srhFoodUseCase.call(srhKey);
    } catch (e) {
      emit(SearchFailure(errMessage: e.toString()));
    }
    // Add a return statement here
    throw Exception('Unexpected error occurred');
  }
}
