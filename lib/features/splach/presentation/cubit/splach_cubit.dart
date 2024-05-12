import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'splach_state.dart';

class SplachCubit extends Cubit<SplachState> {
  SplachCubit() : super(SplachInitial());
}
