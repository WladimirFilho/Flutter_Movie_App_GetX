import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app_getx/application/ui/movie_app_icons_icons.dart';
import 'package:movie_app_getx/application/ui/theme_extensions.dart';
import 'package:movie_app_getx/modules/favorites/favorites_page.dart';
import 'package:movie_app_getx/modules/home/home_controller.dart';
import 'package:movie_app_getx/modules/movies/movies_page.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Obx(() {
        return BottomNavigationBar(
          currentIndex: controller.pageIndex,
          onTap: controller.goToPage,
          elevation: 0,
          backgroundColor: Colors.white,
          selectedItemColor: context.themeRed,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.movie), label: 'Movies'),
            BottomNavigationBarItem(
                icon: Icon(MovieAppIcons.heart), label: 'Favorites'),
            BottomNavigationBarItem(
                icon: Icon(Icons.logout_outlined), label: 'Logout'),
          ],
        );
      }),
      body: Navigator(
        key: Get.nestedKey(HomeController.NAVIGATOR_KEY),
        initialRoute: '/movies',
        onGenerateRoute: (settings) {
          if (settings.name == '/movies') {
            return GetPageRoute(
              settings: settings,
              page: () => const MoviesPage(),
            );
          }
          if (settings.name == '/favorites') {
            return GetPageRoute(
              settings: settings,
              page: () => const FavoritesPage(),
            );
          }
        },
      ),
    );
  }
}
