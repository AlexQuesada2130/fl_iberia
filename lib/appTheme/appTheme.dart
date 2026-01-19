import 'package:flutter/material.dart';

class Apptheme {
  static const Color primary = Color.fromARGB(255, 166, 3, 3);
  static const Color cardsColor = Color.fromARGB(255, 1, 58, 105);
  static const Color backgroundScreens = Color.fromARGB(255, 242, 242, 242);

  static final ThemeData ligthTheme = ThemeData.light().copyWith(
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      titleTextStyle: TextStyle(color: Colors.black, fontSize: 20),
    ),
    iconTheme: IconThemeData(color: primary),
  );
}
