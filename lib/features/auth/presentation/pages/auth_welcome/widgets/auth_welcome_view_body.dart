import 'package:flutter/material.dart';
import 'package:foodie_app/features/auth/presentation/pages/auth_welcome/widgets/auth_footer.dart';
import 'package:foodie_app/features/auth/presentation/pages/auth_welcome/widgets/auth_text_widget.dart';
import 'package:foodie_app/utils/constant/app_image.dart';
import 'package:foodie_app/utils/theme/app_colors.dart';
import 'package:foodie_app/utils/theme/app_text_style.dart';
import 'package:svg_flutter/svg_flutter.dart';

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
        SvgPicture.asset(Appimages.svgAuthWelcome),
        const AuthTextWidget(),
        const SizedBox(
          height: 50,
        ),
        SizedBox(
          width: 310,
          height: 65,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: AppColors.green,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12))),
              onPressed: () {},
              child: Text(
                "Create Account",
                style: AppTextStyle.styleBold14(context),
              )),
        ),
        SizedBox(
          width: 310,
          height: 65,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 0,
                backgroundColor: AppColors.lightTeal,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onPressed: () {},
              child: Text(
                "Login",
                style: AppTextStyle.styleBold14(context)
                    .copyWith(color: AppColors.everGreen),
              )),
        ),
        AuthFooter(
          first: "first",
          second: "second",
        )
      ],
    );
  }
}
