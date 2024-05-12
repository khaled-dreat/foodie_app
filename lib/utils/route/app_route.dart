import 'package:flutter/material.dart';

import '../../features/auth/presentation/pages/auth_welcome/auth_welcome_view.dart';
import '../../features/auth/presentation/pages/forget_pass/forget_pass_view.dart';
import '../../features/auth/presentation/pages/login/login_view.dart';
import '../../features/auth/presentation/pages/registration/registration_view.dart';
import '../../features/auth/presentation/pages/wrapper/wrapper_view.dart';
import '../../features/home/presentation/pages/home/home_view.dart';
import '../../features/on_boarding/presentation/pages/on_bording_view.dart';
import '../../features/splach/presentation/pages/splach_veiw.dart';

class AppRoute {
  // * Pages App
  static Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
    OnBordingview.nameRoute: (context) => const OnBordingview(),
    AuthWelcomeView.nameRoute: (context) => const AuthWelcomeView(),
    RegistrationView.nameRoute: (context) => const RegistrationView(),
    LoginView.nameRoute: (context) => const LoginView(),
    ForgetPassView.nameRoute: (context) => const ForgetPassView(),
    HomeView.nameRoute: (context) => const HomeView(),
    WrapperView.nameRoute: (context) => const WrapperView(),
    SplachView.nameRoute: (context) => const SplachView(),
  };

  // * Inte Route
  static String inteRoute = SplachView.nameRoute;

  // * push Name
  static void go(BuildContext context, String nameRoute) =>
      Navigator.pushNamed(context, nameRoute);

  // * push Name Replace
  static void goReplace(BuildContext context, String nameRoute) =>
      Navigator.pushReplacementNamed(context, nameRoute);

  // * push Name
  static void goMaterial(BuildContext context, Widget page) {
    MaterialPageRoute<Widget> route =
        MaterialPageRoute(builder: (context) => page);
    Navigator.push(context, route);
  }
}
