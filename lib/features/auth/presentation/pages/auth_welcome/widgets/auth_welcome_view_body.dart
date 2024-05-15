import 'package:flutter/material.dart';
import 'package:foodie_app/utils/theme/app_colors.dart';
import 'package:svg_flutter/svg_flutter.dart';
import 'package:foodie_app/features/auth/presentation/pages/auth_welcome/widgets/auth_footer.dart';
import 'package:foodie_app/features/auth/presentation/pages/auth_welcome/widgets/auth_text_widget.dart';
import 'package:foodie_app/utils/constant/app_image.dart';
import '../../../../../../utils/theme/app_text_style.dart';
import '../../widgets/custom_btn_auth.dart';

class AuthWelcomeViewBody extends StatelessWidget {
  const AuthWelcomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const SizedBox(
          height: 100,
        ),
        SvgPicture.asset(AppImages.svgAuthWelcome),
        const AuthTextWidget(),
        const SizedBox(
          height: 50,
        ),
        CustomBtnAuth(
          backgroundColor: AppColors.green,
          style: AppTextStyle.styleBold14(context),
          title: "Create Account",
          onPressed: () {},
        ),
        CustomBtnAuth(
          backgroundColor: AppColors.lightTeal,
          style: AppTextStyle.styleBold14(context)
              .copyWith(color: AppColors.everGreen),
          title: "Login",
          onPressed: () {},
        ),
        const AuthWelcomeFooter(
          first: "first",
          second: "second",
        )
      ],
    );
  }
}
