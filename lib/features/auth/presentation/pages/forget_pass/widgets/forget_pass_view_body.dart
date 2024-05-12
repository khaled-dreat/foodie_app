import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';

import '../../../../../../utils/constant/app_image.dart';
import '../../../../../../utils/theme/app_colors.dart';
import '../../../../../../utils/theme/app_text_style.dart';
import '../../widgets/custom_auth_text_form_field.dart';
import '../../widgets/custom_btn_auth.dart';

class ForgetPassViewBody extends StatelessWidget {
  const ForgetPassViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const SizedBox(
            height: 100,
          ),
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
          const Text(
            "Enter your email address and we will email you instructions on how to reset your password",
            textAlign: TextAlign.center,
          ),
          const Spacer(),
          CustomBtnAuth(
              title: "SEND",
              onPressed: () {},
              backgroundColor: AppColors.green,
              style: AppTextStyle.styleBold14(context)
                  .copyWith(color: AppColors.white)),
          const SizedBox(
            height: 80,
          ),
        ],
      ),
    );
  }
}
