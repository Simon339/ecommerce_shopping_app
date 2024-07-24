import 'package:flutter/material.dart';

ThemeData DartMode= ThemeData(
 colorScheme: ColorScheme.dark(
  background: Colors.black,
  primary: Colors.grey[200]!,
  secondary: Colors.grey[200]!,
  inversePrimary: Colors.grey[400]!,
 ),
 textButtonTheme: TextButtonThemeData(style: TextButton.styleFrom(foregroundColor: Colors.white),
  ),
);
