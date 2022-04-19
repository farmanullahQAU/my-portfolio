import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextStyles {
  static TextStyle? body1 = Theme.of(Get.context!).textTheme.bodyText1;
  static TextStyle? body2 = Theme.of(Get.context!).textTheme.bodyText2;
  static TextStyle? subtitle1 = Theme.of(Get.context!).textTheme.subtitle1;
  static TextStyle? subtitle2 = Theme.of(Get.context!).textTheme.subtitle2;
  static TextStyle? heading1 = Theme.of(Get.context!).textTheme.headline1;
  static TextStyle? heading2 = Theme.of(Get.context!).textTheme.headline2;
  static TextStyle? heading3 = Theme.of(Get.context!).textTheme.headline3;
  static TextStyle? heading4 = Theme.of(Get.context!).textTheme.headline4;
  static TextStyle? heading5 = Theme.of(Get.context!).textTheme.headline5;
  static TextStyle? heading6 = Theme.of(Get.context!).textTheme.headline6;
  static TextStyle? bodyLarge = Theme.of(Get.context!).textTheme.bodyLarge;

//headline theme

  static TextStyle? headlin1 = Theme.of(Get.context!).textTheme.headline6;





  // static TextStyle? getNavigationBarItemColor(int index) {
  //   return Theme.of(Get.context!).textTheme.subtitle1?.copyWith(
  //       color: Get.find<HomeController>().currentIdex == index
  //           ? Colors.cyan[200]
  //           : null);
  // }


  //MY SKILLS PAGE TEXTSTYLES

  static TextStyle? skillsTitleTextStyle = Theme.of(Get.context!).textTheme.subtitle1?.copyWith(
    fontWeight: FontWeight.bold,
    letterSpacing: 1,
    color: Colors.white);
      static TextStyle? skillsDescTextStyle = Theme.of(Get.context!).textTheme.subtitle1?.copyWith(
    color: Colors.white);


}
