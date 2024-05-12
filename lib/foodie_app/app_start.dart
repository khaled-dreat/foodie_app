import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie_app/features/auth/presentation/maneg/wrapper/wrapper_cubit.dart';
import 'package:foodie_app/features/auth/presentation/pages/wrapper/widgets/wrapper_stream_builder.dart';
import 'package:nested/nested.dart';
import '../utils/route/app_route.dart';
import '../utils/theme/app_theme_choose.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: providers,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        // * Theme
        theme: AppThemeChoose.light(context),
        //   darkTheme: AppThemeChoose.dark(context),
        themeMode: ThemeMode.light,
        // * Route
        routes: AppRoute.routes,
        initialRoute: AppRoute.inteRoute,
      ),
    );
  }
}

List<SingleChildWidget> get providers {
  return [
    BlocProvider(
      create: (context) {
        return WrapperCubit();
      },
    ),
  ];
}
