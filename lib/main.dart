import 'package:movie_app_getx/application/bindings/application_binding.dart';
import 'package:movie_app_getx/application/ui/movie_app_ui_config.dart';
import 'package:movie_app_getx/firebase_options.dart';
import 'package:movie_app_getx/modules/home/home_module.dart';
import 'package:movie_app_getx/modules/login/login_module.dart';
import 'package:movie_app_getx/modules/splash/splash_module.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  final remoteConfig = FirebaseRemoteConfig.instance;
  remoteConfig.fetchAndActivate();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: MovieAppUiConfig.title,
      initialBinding: ApplicationBinding(),
      theme: MovieAppUiConfig.theme,
      getPages: [
        ...SplashModule().routers,
        ...LoginModule().routers,
        ...HomeModule().routers
      ],
    );
  }
}
