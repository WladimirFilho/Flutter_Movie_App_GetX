import 'package:get/get.dart';
import 'package:movie_app_getx/modules/home/home_controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController(loginServices: Get.find()), fenix: true);
  }
}
