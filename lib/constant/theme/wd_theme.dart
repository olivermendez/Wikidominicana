import 'package:flutter/material.dart';

ThemeData wdTheme() {
  return ThemeData(
    primaryColor: Colors.white,
    textTheme: TextTheme(
        headline1: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.grey[900],
      elevation: 10,
      selectedLabelStyle: TextStyle(
          color: Color(0xFFA67926), fontFamily: 'Montserrat', fontSize: 14.0),
      unselectedLabelStyle: TextStyle(
          color: Colors.grey[600], fontFamily: 'Montserrat', fontSize: 12.0),
      selectedItemColor: Color(0xFFA67926),
      unselectedItemColor: Colors.grey[600],
      showUnselectedLabels: true,
    ),
  );
}
