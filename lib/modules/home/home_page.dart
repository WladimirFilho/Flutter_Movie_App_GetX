import 'package:flutter/material.dart';
import 'package:movie_app_getx/application/ui/movie_app_icons_icons.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('data'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.movie), label: 'Movies'),
          BottomNavigationBarItem(
              icon: Icon(MovieAppIcons.heart), label: 'Favorites'),
          BottomNavigationBarItem(
              icon: Icon(Icons.logout_outlined), label: 'Logout'),
        ],
      ),
      body: Container(),
    );
  }
}
