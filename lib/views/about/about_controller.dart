import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AboutViewController extends GetxController with GetTickerProviderStateMixin{

  final scrollController=ScrollController();
late RxBool isScrollDown;

@override
  void onInit() {
    initAboutViewAnimationController();
isScrollDown=false.obs;
    scrollController.addListener(() { 

      isScrollDown.value=false;

if(scrollController.offset>60)
{//when scroll down more than 60px the set this value true to show colored appbar


isScrollDown.value=true;

}


    });
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

