part of 'search_cubit.dart';

abstract class SearchState {}

class SearchInitial extends SearchState {}

class SearchLoading extends SearchState {}

class SearchFailure extends SearchState {
  final String errMessage;

  SearchFailure({required this.errMessage});
}

class SearchSuccess extends SearchState {
  final List<FoodEntity> foodList;

  SearchSuccess({required this.foodList});
}
