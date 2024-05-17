import 'package:flutter/material.dart';
import 'package:foodie_app/features/auth/presentation/pages/widgets/custom_btn_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../utils/route/app_route.dart';
import '../../../../../../utils/widgets/toast/app_toast.dart';
import '../../../../../home/presentation/pages/home/home_view.dart';
import '../../../maneg/auth/auth_cubit.dart';

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
