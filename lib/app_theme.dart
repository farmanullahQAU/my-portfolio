
import 'package:flutter/material.dart';

class AppTheme {
  static const blueDarkPrimaryColor = Color.fromARGB(255, 8, 135, 238);


  static final blueTheme = ThemeData(

    
    iconTheme: const IconThemeData(color: Colors.black54),
    textTheme: const TextTheme(
      headlineLarge: TextStyle(color: Colors.white),
headlineMedium: TextStyle(color:Colors.white),
      
      titleSmall: TextStyle(color: blueDarkPrimaryColor)),
    primaryColor: blueDarkPrimaryColor,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Colors.black,
    ),
    bottomNavigationBarTheme:
        const BottomNavigationBarThemeData(selectedItemColor: blueDarkPrimaryColor),
    outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
      textStyle: const TextStyle(color: Colors.white),
      padding: const EdgeInsets.symmetric(vertical: 15),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
    )),
  );




}
