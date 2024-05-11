import 'package:flutter/material.dart';
import 'package:foodie_app/utils/theme/app_colors.dart';
import 'package:svg_flutter/svg_flutter.dart';
import 'package:foodie_app/features/auth/presentation/pages/widgets/auth_welcome/auth_footer.dart';
import 'package:foodie_app/features/auth/presentation/pages/widgets/auth_welcome/auth_text_widget.dart';
import 'package:foodie_app/utils/constant/app_image.dart';
import 'custom_btn_auth.dart';

class AuthViewBody extends StatelessWidget {
  const AuthViewBody({super.key});

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
          onPressed: () {
            showModalBottomSheet(
              showDragHandle: true,
              enableDrag: false,
              context: context,
              builder: (context) {
                return Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [CustomAuthTextFormField()],
                  ),
                );
              },
            );
          },
        ),
        const AuthFooter(
          first: "first",
          second: "second",
        )
      ],
    );
  }
}

class CustomAuthTextFormField extends StatelessWidget {
  const CustomAuthTextFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        decoration: InputDecoration(
      label: Text("data"),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: AppColors.silver)),
    ));
  }
}
