import 'package:flutter/material.dart';
import 'package:gem_store/utilities/constants.dart';

class MyTheme {
  static var appTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: themeColor,
    scaffoldBackgroundColor: Colors.white,
    fontFamily: 'ProductSans',
    appBarTheme: const AppBarTheme(backgroundColor: Colors.grey, elevation: 0),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: Colors.grey,
      selectionColor: Color.fromRGBO(255, 255, 255, 1.0),
      selectionHandleColor: Colors.black,
    ),
    colorScheme: const ColorScheme.dark().copyWith(
      secondary: Colors.grey,
      tertiary: Colors.grey.withOpacity(0.7),
      background: Colors.white,
    ),
  );
  static Color primaryColor = themeColor;
}
