import 'package:flutter/material.dart';
import 'package:foodie_app/utils/theme/app_colors.dart';
import 'package:svg_flutter/svg_flutter.dart';
import 'package:foodie_app/features/auth/presentation/pages/auth_welcome/widgets/auth_footer.dart';
import 'package:foodie_app/features/auth/presentation/pages/auth_welcome/widgets/auth_text_widget.dart';
import 'package:foodie_app/utils/constant/app_image.dart';
import 'custom_btn_auth.dart';

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
        CustomBtnAuth(
          isLogin: false,
          title: "Create Account",
          onPressed: () {},
        ),
        CustomBtnAuth(
          isLogin: true,
          title: "Login",
          onPressed: () {},
        ),
        const AuthFooter(
          first: "first",
          second: "second",
        )
      ],
    );
  }
}
