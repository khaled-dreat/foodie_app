import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'firebase_options.dart';
import 'foodie_app/app_start.dart';
import 'utils/setup_service_locator/setup_service_locator.dart';
import 'utils/widgets/simple_bloc_observer/simple_bloc_observer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // * FireBase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  setupServiceLocatorSrh();

  Bloc.observer = SimpleBlocObserver();

  runApp(const AppStart());
}
