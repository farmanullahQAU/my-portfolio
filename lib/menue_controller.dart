import 'package:farmanullah_portfolio/route_names.dart';
import 'package:farmanullah_portfolio/textstyles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuController extends GetxController {
  //to control menu for mobile and web

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<ScaffoldState> _scaffoldKey2 = GlobalKey<ScaffoldState>();

  GlobalKey<ScaffoldState> get scaffoldKey2 => _scaffoldKey2;

  GlobalKey<ScaffoldState> get scaffoldKey => _scaffoldKey;

  var _currentIndex = 0;
  int get currentIdex => _currentIndex;
  set currentIdex(int index) => _currentIndex = index;

  void controlMenu() {
    if (!_scaffoldKey.currentState!.isDrawerOpen) {
      _scaffoldKey.currentState!.openDrawer();
    }
  }
}

class NavBar {
  Widget? item;
  String routeName;
  int? index;
  NavBar({this.item, this.index, required this.routeName});
}
