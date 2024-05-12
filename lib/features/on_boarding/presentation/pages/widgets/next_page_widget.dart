import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie_app/features/auth/presentation/pages/login/login_view.dart';
import 'package:foodie_app/features/on_boarding/presentation/pages/widgets/btn_next_index.dart';
import 'package:foodie_app/utils/route/app_route.dart';
import 'package:foodie_app/utils/theme/app_text_style.dart';

import '../../cubit/on_boarding_cubit.dart';
import 'btn_get_started.dart';
import 'dot_indicator.dart';

class NextPageWidget extends StatelessWidget {
  const NextPageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              onPressed: () {
                AppRoute.goReplace(context, LoginView.nameRoute);
              },
              icon: Text(
                "Skip",
                style:
                    AppTextStyle.styleRegular13(context).copyWith(fontSize: 16),
              )),
          // * DotIndicator
          const DotIndicator(),
          //  const Spacer(),
          // * Next page Button, Get Started Button
          BtnNextIndex(),
        ],
      ),
    );
  }
}
