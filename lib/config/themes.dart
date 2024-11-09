import 'package:flutter/material.dart';
import 'package:niu/config/colors.dart';

final ThemeData lightTheme = ThemeData(
  appBarTheme: const AppBarTheme(
      backgroundColor: creme,
      iconTheme: IconThemeData(color: black1),
      titleTextStyle: TextStyle(color: black1)),
  brightness: Brightness.light,
  primaryColor: black1,
  scaffoldBackgroundColor: creme2,
  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: black1),
    bodyMedium: TextStyle(color: Colors.black54),
  ),
);

final ThemeData darkTheme = ThemeData(
  appBarTheme: const AppBarTheme(
      backgroundColor: black3,
      iconTheme: IconThemeData(color: grey1),
      titleTextStyle: TextStyle(color: lightgrey1)),
  brightness: Brightness.dark,
  primaryColor: lightgrey1,
  scaffoldBackgroundColor: black1,
  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: lightgrey1),
    bodyMedium: TextStyle(color: lightgrey2),
  ),
);
