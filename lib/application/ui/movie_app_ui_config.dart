import 'package:flutter/material.dart';

class MovieAppUiConfig {
  MovieAppUiConfig._();

  static String get title => 'Movies App';

  static ThemeData get theme => ThemeData(
        fontFamily: 'Metropolis',
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          elevation: 0,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(
            color: Color.fromARGB(255, 52, 52, 52),
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
      );
}
