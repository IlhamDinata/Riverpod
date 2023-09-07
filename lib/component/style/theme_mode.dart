import 'package:flutter/material.dart';

class Themes {
  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.grey.shade100,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.grey.shade50,
      titleTextStyle: const TextStyle(color: Colors.black, fontSize: 12),
      centerTitle: false,
    ),
    primarySwatch: Colors.deepOrange,
    fontFamily: 'PlusJakartaSans',
    iconTheme: IconThemeData(color: Colors.grey.shade700),
  );

  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black,
      titleTextStyle: TextStyle(color: Colors.white, fontSize: 18),
      centerTitle: false,
    ),
    primarySwatch: Colors.deepOrange,
    fontFamily: 'PlusJakartaSans',
    iconTheme: const IconThemeData(color: Colors.white),
  );
}
