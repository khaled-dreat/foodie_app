import 'package:flutter/material.dart';
import 'package:foodie_app/features/auth/presentation/pages/widgets/custom_btn_auth.dart';
import 'package:foodie_app/utils/constant/app_image.dart';
import 'package:foodie_app/utils/theme/app_colors.dart';
import 'package:foodie_app/utils/theme/app_text_style.dart';
import 'package:svg_flutter/svg_flutter.dart';
import '../../widgets/custom_auth_text_form_field.dart';

class RegistrationViewBody extends StatelessWidget {
  const RegistrationViewBody({super.key});

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
            hintText: "Enter your full name",
            label: "Full Name",
          ),
          const SizedBox(
            height: 25,
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
          const SizedBox(
            height: 50,
          ),
          CustomBtnAuth(
              title: "Registration",
              onPressed: () {},
              backgroundColor: AppColors.green,
              style: AppTextStyle.styleBold14(context)
                  .copyWith(color: AppColors.white)),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 100),
            child: Divider(),
          ),
          CustomBtnAuthIcon(
              title: "Sign up with Google",
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
