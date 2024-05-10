import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubit/on_boarding_cubit.dart';
import 'custom_dot_indicator.dart';

class DotIndicator extends StatelessWidget {
  const DotIndicator({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnBoardingCubit, int>(builder: (context, state) {
      return Row(
        children: List.generate(
          3,
          (index) => Padding(
            padding: const EdgeInsets.only(right: 6),
            child: CustomDotIndicator(isActive: state == index),
          ),
        ),
      );
    });
  }
}
