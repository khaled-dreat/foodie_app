import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../utils/theme/app_text_style.dart';
import '../../cubit/on_boarding_cubit.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnBoardingCubit, int>(builder: (context, state) {
      return Column(children: [
        Text(
          context.read<OnBoardingCubit>().onBordertitle(),
          style: AppTextStyle.styleSemiBold16(context).copyWith(fontSize: 24),
        ),
        SizedBox(
          height: 25,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Text(
            context.read<OnBoardingCubit>().onBorderSuptitle(),
            textAlign: TextAlign.center,
            style: AppTextStyle.styleRegular10(context).copyWith(fontSize: 14),
          ),
        ),
      ]);
    });
  }
}
