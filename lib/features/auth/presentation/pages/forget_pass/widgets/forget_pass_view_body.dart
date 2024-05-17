import 'package:flutter/material.dart';
import 'package:foodie_app/features/auth/presentation/pages/login/widgets/custom_btn_auth_bloc_consumer.dart';
import 'package:foodie_app/features/auth/presentation/pages/widgets/auth_field_email.dart';
import 'package:foodie_app/features/auth/presentation/pages/login/widgets/login_view_body.dart';
import 'package:svg_flutter/svg_flutter.dart';
import '../../../../../../utils/constant/app_image.dart';
import '../../../../../../utils/theme/app_colors.dart';
import '../../../../../../utils/theme/app_text_style.dart';
import '../../../maneg/auth/auth_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ForgetPassViewBody extends StatelessWidget {
  const ForgetPassViewBody({super.key});
  static final GlobalKey<FormState> keyForm = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: keyForm,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const SizedBox(
              height: 100,
            ),
            // * Image
            SvgPicture.asset(Assets.svgAuthWelcome),
            const SizedBox(
              height: 20,
            ),
            // * Text Form Filed Email
            const AuthFieldEmail(),
            const SizedBox(
              height: 25,
            ),
            // * Instructions for re-creating your password
            const Text(
              "Enter your email address and we will email you instructions on how to reset your password",
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            // * Send Email For reset password
            CustomBtnAuthBlocConsumer(
                keyForm: keyForm,
                title: "SEND",
                onPressed: () async {
                  if (keyForm.currentState?.validate() ?? false) {
                    // ✅

                    keyForm.currentState?.save();
                    await context.read<AuthCubit>().resetPass();
                    Navigator.pop(context);
                  }
                },
                backgroundColor: AppColors.green,
                style: AppTextStyle.styleBold14(context)
                    .copyWith(color: AppColors.white)),
            const SizedBox(
              height: 80,
            ),
          ],
        ),
      ),
    );
  }
}
