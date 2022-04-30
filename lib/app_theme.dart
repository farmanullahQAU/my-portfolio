
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static const blueDarkPrimaryColor = Color.fromARGB(255, 8, 135, 238);


  static final blueTheme = ThemeData(
textTheme: GoogleFonts.openSansTextTheme(

  TextTheme(
    
    subtitle1: TextStyle(color: Colors.white),
    headline4: TextStyle(color: Colors.white))
),
// textTheme: GoogleFonts.montserratTextTheme(

//   TextTheme(headline4: TextStyle(color: Colors.white))
// ),
    iconTheme: const IconThemeData(color: Colors.black54),
   
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
