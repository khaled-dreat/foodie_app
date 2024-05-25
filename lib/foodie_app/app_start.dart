import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie_app/features/auth/presentation/maneg/auth/auth_cubit.dart';
import 'package:foodie_app/features/auth/presentation/maneg/wrapper/wrapper_cubit.dart';
import 'package:foodie_app/features/auth/presentation/pages/wrapper/widgets/wrapper_stream_builder.dart';
import 'package:foodie_app/features/search/data/repositories/srh_reop_impl.dart';
import 'package:foodie_app/features/search/domain/usecases/srh_food_use_case.dart';
import 'package:foodie_app/features/search/presentation/cubit/search_cubit.dart';
import 'package:foodie_app/utils/setup_service_locator/setup_service_locator.dart';
import 'package:nested/nested.dart';
import '../features/search/domain/repositories/srh_reop.dart';
import '../utils/route/app_route.dart';
import '../utils/theme/app_theme_choose.dart';

class AppStart extends StatelessWidget {
  const AppStart({super.key});

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
        return SearchCubit(
          srhFoodUseCase: SrhFoodUseCase(srhRepo: getIt.get<SrhRepo>()),
        );
      },
    ),
    BlocProvider(
      create: (context) {
        return WrapperCubit();
      },
    ),
    BlocProvider(
      create: (context) {
        return AuthCubit();
      },
    ),
  ];
}
