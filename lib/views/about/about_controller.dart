import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AboutViewController extends GetxController with GetTickerProviderStateMixin{



@override
  void onInit() {
    initAboutViewAnimationController();
    super.onInit();
  }

  late final AnimationController _aboutAnimationController = AnimationController(
    value: 0.1,
    duration: const Duration(milliseconds: 1500),
    vsync: this,
  )..repeat(reverse: false);
  late final Animation<double> aboutAnimation = CurvedAnimation(
    parent: _aboutAnimationController,
     curve: Curves.fastOutSlowIn,
  );


    void initAboutViewAnimationController() {
    _aboutAnimationController.addStatusListener((AnimationStatus status) {
      if (status == AnimationStatus.completed) {
        _aboutAnimationController.dispose();
      } else if (status == AnimationStatus.dismissed) {
        _aboutAnimationController.dispose();
      }
    });
    _aboutAnimationController.forward();
  }

}

