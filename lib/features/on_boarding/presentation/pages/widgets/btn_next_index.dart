import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie_app/utils/theme/app_colors.dart';

import '../../../../../utils/route/app_route.dart';
import '../../../../auth/presentation/pages/login/login_view.dart';
import '../../cubit/on_boarding_cubit.dart';

class BtnNextIndex extends StatelessWidget {
  const BtnNextIndex({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnBoardingCubit, int>(builder: (context, state) {
      return Container(
        decoration:
            const ShapeDecoration(shape: OvalBorder(), color: Colors.white),
        child: IconButton(
          icon: Icon(
            color: state < 2 ? AppColors.black : AppColors.green,
            Icons.arrow_forward,
          ),
          onPressed: () {
            context.read<OnBoardingCubit>().nextIndex(context);
            if (state == 2) {
              AppRoute.goReplace(context, LoginView.nameRoute);
            }
          },
        ),
      );
    });
  }
}
