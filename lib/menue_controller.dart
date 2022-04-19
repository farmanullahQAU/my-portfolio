import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuController extends GetxController {
  //to control menu for mobile and web

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<ScaffoldState> _scaffoldKey2 = GlobalKey<ScaffoldState>();

  GlobalKey<ScaffoldState> get scaffoldKey2 => _scaffoldKey2;

  GlobalKey<ScaffoldState> get scaffoldKey => _scaffoldKey;


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

  VoidCallback? onTap;
  NavBar({this.item, this.index, required this.routeName,this.onTap});
}
