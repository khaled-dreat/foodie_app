import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubit/on_boarding_cubit.dart';

class BtnNextIndex extends StatelessWidget {
  const BtnNextIndex({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          const ShapeDecoration(shape: OvalBorder(), color: Colors.white),
      child: IconButton(
        icon: const Icon(
          color: Colors.black,
          Icons.arrow_forward,
        ),
        onPressed: () {
          context.read<OnBoardingCubit>().nextIndex();
        },
      ),
    );
  }
}
