import 'package:bloc/bloc.dart';
import 'package:foodie_app/utils/constant/app_image.dart';

class OnBoardingCubit extends Cubit<int> {
  OnBoardingCubit() : super(0);
  void nextIndex() {
    if (state < 2) {
      emit(state + 1);
    }
  }

  String onBorderImages() {
    List<String> imgList = [
      Appimages.svgOnBording1,
      Appimages.svgOnBording2,
      Appimages.svgOnBording3,
    ];
    return imgList[state];
  }

  String onBordertitle() {
    List<String> onBordertitle = [
      "Nearby restaurants",
      "Select the Favorites Menu",
      "Good food at a cheap price",
    ];
    return onBordertitle[state];
  }

  String onBorderSuptitle() {
    List<String> onBorderSuptitle = [
      "You don't have to go far to find a good restaurant,we have provided all the restaurants that is near you",
      "Now eat well, don't leave the house,You can choose your favorite food only with one click",
      "You can eat at expensive restaurants with affordable price",
    ];
    return onBorderSuptitle[state];
  }
}
