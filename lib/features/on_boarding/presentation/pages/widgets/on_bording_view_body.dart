import 'package:flutter/material.dart';
import 'package:foodie_app/features/on_boarding/presentation/pages/widgets/next_page_widget.dart';
import 'package:foodie_app/utils/constant/app_image.dart';
import 'package:foodie_app/utils/theme/app_text_style.dart';
import 'package:svg_flutter/svg.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../cubit/on_boarding_cubit.dart';
import 'dot_indicator.dart';

class OnBordingViewBody extends StatelessWidget {
  const OnBordingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OnBoardingCubit(),
      child: BlocBuilder<OnBoardingCubit, int>(builder: (context, state) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SvgPicture.asset(context.read<OnBoardingCubit>().onBorderImages()),
            SizedBox(
              height: 80,
            ),
            Text(
              "Nearby restaurants",
              style:
                  AppTextStyle.styleSemiBold16(context).copyWith(fontSize: 24),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Text(
                "You don't have to go far to find a good restaurant,we have provided all the restaurants that is near you",
                textAlign: TextAlign.center,
                style:
                    AppTextStyle.styleRegular10(context).copyWith(fontSize: 14),
              ),
            ),
            NextPageWidget()
          ],
        );
      }),
    );
  }
}
