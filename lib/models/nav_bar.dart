import 'package:flutter/material.dart';

class NavBar {
  Widget? item;
  String routeName;
  int? index;

  VoidCallback? onTap;
  NavBar({this.item, this.index, required this.routeName, this.onTap});
}