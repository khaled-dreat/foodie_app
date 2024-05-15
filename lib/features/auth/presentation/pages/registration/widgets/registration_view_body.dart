import 'dart:developer';
import "package:flutter_bloc/flutter_bloc.dart";
import 'package:flutter/material.dart';
import 'package:foodie_app/features/auth/presentation/pages/widgets/auth_field_email.dart';
import 'package:foodie_app/features/auth/presentation/pages/login/widgets/login_view_body.dart';
import 'package:foodie_app/features/home/presentation/pages/home/home_view.dart';
import 'package:foodie_app/utils/constant/app_image.dart';
import 'package:foodie_app/utils/theme/app_colors.dart';
import 'package:foodie_app/utils/theme/app_text_style.dart';
import 'package:svg_flutter/svg_flutter.dart';
import '../../../../../../utils/route/app_route.dart';
import '../../../maneg/auth/auth_cubit.dart';
import '../../widgets/auth_field_full_name.dart';
import '../../widgets/auth_field_pass.dart';
import '../../widgets/auth_footer.dart';

class RegistrationViewBody extends StatelessWidget {
  const RegistrationViewBody({super.key});
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
            SvgPicture.asset(AppImages.svgAuthWelcome),
            const SizedBox(
              height: 20,
            ),
            // * Text Form Filed Full Name
            const AuthFieldFullName(),
            const SizedBox(
              height: 25,
            ),
            // * Text Form Filed Email
            const AuthFieldEmail(),
            const SizedBox(
              height: 25,
            ),
            // * Text Form Filed Password
            const AuthFieldPass(),
            const SizedBox(
              height: 50,
            ),
            // * Registration Btn
            CustomBtnAuthBlocConsumer(
                keyForm: keyForm,
                title: "Registration",
                onPressed: () async {
                  AuthCubit? authCubit = context.read<AuthCubit>();

                  if (keyForm.currentState?.validate() ?? false) {
                    // ✅
                    log("✅");
                    keyForm.currentState?.save();
                    if (await authCubit.authMethod(isSignIn: false) != null) {
                      AppRoute.goReplace(context, HomeView.nameRoute);
                    }
                  }
                },
                backgroundColor: AppColors.green,
                style: AppTextStyle.styleBold14(context)
                    .copyWith(color: AppColors.white)),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 100),
              child: Divider(),
            ),
            const SizedBox(
              height: 20,
            ),
            // * Auth Footer (Already a member)
            AuthFooter(
                onTap: () {
                  Navigator.pop(context);
                },
                first: "Already a member? ",
                second: "Login"),
            const SizedBox(
              height: 60,
            ),
          ],
        ),
      ),
    );
  }
}
