import 'package:flutter/material.dart';

final kTextThemeData = const TextTheme(
  bodyLarge: TextStyle(color: Colors.white),
  bodyMedium: TextStyle(color: Colors.white),
  bodySmall: TextStyle(color: Colors.white),
  titleLarge: TextStyle(color: Colors.white),
  titleMedium: TextStyle(color: Colors.white),
  titleSmall: TextStyle(color: Colors.white),
  labelLarge: TextStyle(color: Colors.white),
  labelMedium: TextStyle(color: Colors.white),
  labelSmall: TextStyle(color: Colors.white),
  headlineLarge: TextStyle(color: Colors.white),
  headlineMedium: TextStyle(color: Colors.white),
  headlineSmall: TextStyle(color: Colors.white),
  displayLarge: TextStyle(color: Colors.white),
  displayMedium: TextStyle(color: Colors.white),
  displaySmall: TextStyle(color: Colors.white),
);

final kIconThemeData = InputDecorationTheme(
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.white),
    borderRadius: BorderRadius.circular(8),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(
        color: Colors.white, width: 2.0), // White border when selected
    borderRadius: BorderRadius.circular(8),
  ),
  labelStyle: TextStyle(color: Colors.white), // Label color
);
