import 'package:flutter/material.dart';

import '../utils/route/app_route.dart';
import '../utils/theme/app_theme_choose.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // * Theme
      theme: AppThemeChoose.light(context),
      //   darkTheme: AppThemeChoose.dark(context),
      themeMode: ThemeMode.light,
      // * Route
      routes: AppRoute.routes,
      initialRoute: AppRoute.inteRoute,
    );
  }
}
