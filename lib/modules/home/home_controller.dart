import 'package:get/get.dart';
import 'package:movie_app_getx/services/login/login_services.dart';

class HomeController extends GetxController {
  // ignore: constant_identifier_names
  static const NAVIGATOR_KEY = 1;
  // ignore: constant_identifier_names
  static const INDEX_PAGE_EXIT = 2;

  final LoginServices _loginServices;

  HomeController({required LoginServices loginServices})
      : _loginServices = loginServices;

  final _pages = ['/movies', '/favorites'];

  final _pageIndex = 0.obs;

  int get pageIndex => _pageIndex.value;

  void goToPage(int page) {
    _pageIndex(page);
    if (page == INDEX_PAGE_EXIT) {
      _loginServices.logOut();
    } else if (page == INDEX_PAGE_EXIT) {
      Get.offNamed(_pages[page], id: NAVIGATOR_KEY);
    }
  }
}
