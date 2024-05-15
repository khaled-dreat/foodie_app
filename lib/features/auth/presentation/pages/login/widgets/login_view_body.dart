import 'package:flutter/material.dart';
import 'package:foodie_app/features/auth/presentation/maneg/auth/auth_cubit.dart';
import 'package:foodie_app/features/auth/presentation/pages/forget_pass/forget_pass_view.dart';
import 'package:foodie_app/features/auth/presentation/pages/widgets/auth_field_email.dart';
import 'package:foodie_app/features/auth/presentation/pages/registration/registration_view.dart';
import 'package:foodie_app/features/home/presentation/pages/home/home_view.dart';
import 'package:foodie_app/utils/route/app_route.dart';
import 'package:svg_flutter/svg_flutter.dart';

import '../../../../../../utils/constant/app_image.dart';
import '../../../../../../utils/theme/app_colors.dart';
import '../../../../../../utils/theme/app_text_style.dart';
import '../../../../../../utils/widgets/toast/app_toast.dart';
import '../../widgets/auth_field_pass.dart';
import '../../widgets/auth_footer.dart';
import '../../widgets/custom_btn_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});
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
            // * Text Form Filed Password
            const AuthFieldPass(),
            // * Forget Password Text Button
            Padding(
              padding: const EdgeInsets.only(left: 200),
              child: TextButton(
                  onPressed: () {
                    AppRoute.go(context, ForgetPassView.nameRoute);
                  },
                  child: Text(
                    "Forget Password?",
                    style: AppTextStyle.styleSemiBold16(context)
                        .copyWith(color: AppColors.green),
                  )),
            ),
            const SizedBox(
              height: 50,
            ),
            // * Login Btn
            CustomBtnAuthBlocConsumer(
                keyForm: keyForm,
                title: "Login",
                onPressed: () async {
                  if (keyForm.currentState?.validate() ?? false) {
                    // ✅

                    keyForm.currentState?.save();
                    await context.read<AuthCubit>().authMethod();
                  }
                },
                backgroundColor: AppColors.green,
                style: AppTextStyle.styleBold14(context)
                    .copyWith(color: AppColors.white)),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 100),
              child: Divider(),
            ),
            // * Login with Google Btn
            CustomBtnAuthIcon(
                title: "Login with Google",
                onPressed: () async {
                  // ✅
                  keyForm.currentState?.save();
                  await context.read<AuthCubit>().signInWithGoogle();
                },
                icon: Assets.svgGoogle,
                backgroundColor: AppColors.lightGray2,
                style: AppTextStyle.styleBold14(context)
                    .copyWith(color: AppColors.black)),
            const SizedBox(
              height: 20,
            ),
            // * Auth Footer (Register)
            AuthFooter(
                onTap: () {
                  AppRoute.go(context, RegistrationView.nameRoute);
                },
                first: "Don't have an account? ",
                second: "Register"),
            const SizedBox(
              height: 60,
            ),
          ],
        ),
      ),
    );
  }
}

class CustomBtnAuthBlocConsumer extends StatelessWidget {
  const CustomBtnAuthBlocConsumer(
      {super.key,
      required this.keyForm,
      required this.title,
      required this.backgroundColor,
      required this.style,
      this.onPressed});
  final GlobalKey<FormState> keyForm;
  final String title;
  final Color backgroundColor;
  final TextStyle style;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is AuthFailure) {
          AppToast.toast(state.errMessage);
        }
        if (state is AuthSuccess) {
          AppRoute.goReplace(context, HomeView.nameRoute);
        }
      },
      builder: (context, state) {
        return CustomBtnAuth(
            title: title,
            onPressed: onPressed,
            isLoading: state is AuthLoading ? true : false,
            backgroundColor: backgroundColor,
            style: style);
      },
    );
  }
}
