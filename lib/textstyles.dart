import 'package:farmanullah_portfolio/views/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_framework/responsive_framework.dart';

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
//headline theme

  static TextStyle? headlin1 = Theme.of(Get.context!).textTheme.headline6;

  static TextStyle? footerBody1 = Theme.of(Get.context!)
      .textTheme
      .bodyText1
      ?.copyWith(
          color: Colors.grey, fontWeight: FontWeight.normal, fontSize: 10);

  static TextStyle? bottomLineTextStyle = Theme.of(Get.context!)
      .textTheme
      .bodyText1
      ?.copyWith(
          color: Colors.white, fontWeight: FontWeight.normal, fontSize: 10);
  static TextStyle? headerBody1 =
      TextStyles.subtitle1?.copyWith(color: Colors.grey);

  static TextStyle? get backgroundImageHeaderTextStyle =>
      ResponsiveWrapper.of(Get.context!).isSmallerThan(TABLET)
          ? Theme.of(Get.context!)
              .textTheme
              .bodyText1
              ?.copyWith(color: Colors.white)
          : Theme.of(Get.context!)
              .textTheme
              .headline4
              ?.copyWith(color: Colors.white);
  static TextStyle? get backgroundImageSubtitleTextStyle =>
      ResponsiveWrapper.of(Get.context!).isSmallerThan(TABLET)
          ? Theme.of(Get.context!)
              .textTheme
              .bodyText2
              ?.copyWith(color: Colors.white)
          : Theme.of(Get.context!)
              .textTheme
              .headline6
              ?.copyWith(color: Colors.white, fontWeight: FontWeight.normal);

  static TextStyle? getNavigationBarItemColor(int index) {
    return Theme.of(Get.context!).textTheme.subtitle1?.copyWith(
        color: Get.find<HomeController>().currentIdex == index
            ? Colors.cyan[200]
            : null);
  }
}
