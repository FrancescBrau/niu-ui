import 'package:flutter/material.dart';
import 'package:niu/config/colors.dart';
import 'package:niu/config/sizes.dart';

final ThemeData lightTheme = ThemeData(
  fontFamily: "Lato",
  textTheme: const TextTheme(
    bodyMedium: TextStyle(fontSize: normalTextSize),
    headlineMedium: TextStyle(fontSize: bigTextSize),
    bodySmall: TextStyle(fontSize: smallTextSize),
  ),
  scaffoldBackgroundColor: creme,
);
