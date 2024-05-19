import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodie_app/features/home/presentation/pages/home/widgets/explore_restaurant_widget/custom_btn_book.dart';
import 'package:foodie_app/features/on_boarding/presentation/pages/widgets/btn_get_started.dart';
import 'package:foodie_app/utils/widgets/information_widget/information_widget.dart';
import 'package:svg_flutter/svg_flutter.dart';

import '../../../../../utils/constant/app_image.dart';
import '../../../../../utils/theme/app_colors.dart';
import '../../../../../utils/theme/app_text_style.dart';

class FoodDetailsView extends StatelessWidget {
  static const String nameRoute = "FoodDetailsView";
  const FoodDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FoodDetailsViewBody(),
    );
  }
}

class FoodDetailsViewBody extends StatelessWidget {
  const FoodDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        Column(
          children: [
            Expanded(child: CustomImageFoodDetails()),
            FoodDetailsWdget(),
          ],
        ),
        CousomFoodDetailsAppBar(),
      ],
    );
  }
}

class FoodDetailsWdget extends StatelessWidget {
  const FoodDetailsWdget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 15,
          ),
          Text(
            "Burger Bistro",
            style: AppTextStyle.styleBold20(context),
          ),
          Row(
            children: [
              Image.asset(
                Assets.svgEllipseLogo,
                height: 25,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "Rose Garden",
                style: AppTextStyle.styleRegular13(context)
                    .copyWith(color: AppColors.darkBlue),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          InformationWidget(),
          const SizedBox(
            height: 15,
          ),
          Text(
            "Maecenas sed diam eget risus varius blandit sit amet non magna. Integer posuere erat a ante venenatis dapibus posuere velit aliquet.",
            style: AppTextStyle.styleRegular13(context),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "SIZE:",
                style:
                    AppTextStyle.styleRegular13(context).copyWith(fontSize: 16),
              ),
              CustomBtnSelectSize(
                isSelected: false,
                title: "10",
              ),
              CustomBtnSelectSize(
                title: "14",
                isSelected: true,
              ),
              CustomBtnSelectSize(
                title: "16",
                isSelected: false,
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          CustomFoodCountBtn(),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: 60,
                  child: CustomBtn(
                      title: "ADD TO CATR",
                      onPressed: () {},
                      backgroundColor: AppColors.green,
                      style: AppTextStyle.styleBold14(context)),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}

class CustomFoodCountBtn extends StatelessWidget {
  const CustomFoodCountBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          r"$32",
          style: AppTextStyle.styleRegular13(context)
              .copyWith(fontSize: 28, color: AppColors.darkBlue),
        ),
        Container(
          height: 50,
          width: 130,
          decoration: BoxDecoration(
              color: AppColors.darkBlue,
              borderRadius: BorderRadius.circular(25)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 30,
                width: 30,
                child: FloatingActionButton(
                  onPressed: () {
                    // إجراء عند الضغط على الزر
                  },
                  child: Icon(
                    Icons.add,
                    color: AppColors.white,
                  ),
                  mini: true,
                  backgroundColor: AppColors.silver,
                  shape: CircleBorder(),
                ),
              ),
              Text(
                "2",
                style: AppTextStyle.styleBold14(context),
              ),
              SizedBox(
                height: 30,
                width: 30,
                child: FloatingActionButton(
                  onPressed: () {
                    // إجراء عند الضغط على الزر
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 11),
                    child: SvgPicture.asset(height: 50, Assets.svgMinimizeIcon),
                  ),
                  mini: true,
                  backgroundColor: AppColors.silver,
                  shape: CircleBorder(),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class CustomImageFoodDetails extends StatelessWidget {
  const CustomImageFoodDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.amber,
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage(Assets.svgChickenKatsu)),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30))),
    );
  }
}

class CustomBtnSelectSize extends StatelessWidget {
  const CustomBtnSelectSize({
    super.key,
    required this.isSelected,
    required this.title,
  });
  final bool isSelected;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 50,
      width: 50,
      decoration: ShapeDecoration(
          shape: OvalBorder(),
          color: isSelected ? AppColors.green : AppColors.charcoalGray),
      child: Text(
        title,
        style: AppTextStyle.styleRegular13(context).copyWith(
            fontSize: 16,
            color: isSelected ? AppColors.white : AppColors.darkBlue),
      ),
    );
  }
}

class CousomFoodDetailsAppBar extends StatelessWidget {
  const CousomFoodDetailsAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: Row(
        children: [
          Container(
            height: 100,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: AppColors.lightGray2,
              shape: BoxShape.circle,
            ),
            child: const Icon(Icons.chevron_left_rounded),
          ),
          SizedBox(
            width: 15,
          ),
          Spacer(),
          SvgPicture.asset(Assets.svgUnSaveIcon),
        ],
      ),
    );
  }
}
