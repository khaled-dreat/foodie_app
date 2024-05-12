import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';

import '../../../../../../utils/constant/app_image.dart';
import '../../../../../../utils/theme/app_colors.dart';
import '../../../../../../utils/theme/app_text_style.dart';
import '../../widgets/custom_auth_text_form_field.dart';
import '../../widgets/custom_btn_auth.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SvgPicture.asset(AppImages.svgAuthWelcome),
          const SizedBox(
            height: 20,
          ),
          const CustomAuthTextFormField(
            isPass: false,
            hintText: "Eg namaemail@emailkamu.com",
            label: "Email address",
          ),
          const SizedBox(
            height: 25,
          ),
          const CustomAuthTextFormField(
            isPass: true,
            hintText: "**** **** ****",
            label: "Password",
          ),
          Padding(
            padding: const EdgeInsets.only(left: 200),
            child: TextButton(
                onPressed: () {},
                child: Text(
                  "Forget Password?",
                  style: AppTextStyle.styleSemiBold16(context)
                      .copyWith(color: AppColors.green),
                )),
          ),
          const SizedBox(
            height: 50,
          ),
          CustomBtnAuth(
              title: "Login",
              onPressed: () {},
              backgroundColor: AppColors.green,
              style: AppTextStyle.styleBold14(context)
                  .copyWith(color: AppColors.white)),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 100),
            child: Divider(),
          ),
          CustomBtnAuthIcon(
              title: "Login with Google",
              onPressed: () {},
              icon: AppImages.svgGoogle,
              backgroundColor: AppColors.lightGray2,
              style: AppTextStyle.styleBold14(context)
                  .copyWith(color: AppColors.black)),
          const SizedBox(
            height: 80,
          ),
        ],
      ),
    );
  }
}
