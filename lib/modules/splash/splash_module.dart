import 'package:movie_app_getx/application/module/module.dart';
import 'package:movie_app_getx/modules/splash/splash_bindings.dart';
import 'package:movie_app_getx/modules/splash/splash_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class SplashModule implements Module {
  @override
  List<GetPage> routers = [
    GetPage(
      name: '/',
      binding: SplashBindings(),
      page: () => const SplashPage(),
    )
  ];
}
