import 'package:flutter/material.dart';

class ThemeHelper{
  static Color primaryColor = Color(0xFF3C6FD1);

  static final light = ThemeData(
    useMaterial3: false,
    scaffoldBackgroundColor: primaryColor,
    colorScheme: ColorScheme.fromSwatch(
      accentColor: primaryColor
    ),
    dividerColor: Colors.white,
    fontFamily: 'Poppins',
    iconTheme: IconThemeData(
      color: Colors.white,
    ),
    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: primaryColor,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.white),
      titleTextStyle: TextStyle(color: Colors.white, fontSize: 17)
    ),
  );
}