import 'package:flutter/material.dart';
import 'package:foodie_app/features/on_boarding/presentation/pages/widgets/next_page_widget.dart';
import 'package:foodie_app/features/on_boarding/presentation/pages/widgets/text_widget.dart';
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
            TextWidget(),
            NextPageWidget()
          ],
        );
      }),
    );
  }
}
