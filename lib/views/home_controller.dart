import 'package:farmanullah_portfolio/contact/contact_me.dart';
import 'package:farmanullah_portfolio/views/projects/projects_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../menue_controller.dart';
import '../route_names.dart';
import '../textstyles.dart';
import 'about/about_view.dart';
import 'home_view.dart';

class HomeController extends GetxController {
  var _currentIndex = 0.obs;
  int get currentIdex => _currentIndex.value;
  set currentIdex(int index) => _currentIndex.value = index;

  final List<Widget> screens = [
    HomePageContents(),
    ProjectsView(),
    AboutView(),
    ContactMeView(),
    AboutView(),


  ];

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  List<NavBar> getNavBar() {
    return [
      NavBar(
        item: Text("Home", style: TextStyles.getNavigationBarItemColor(0)),
        index: 0,
        routeName: RouteNames.HOME,
      ),

      NavBar(
        routeName: RouteNames.HOME,
        item: Text("Projects", style: TextStyles.getNavigationBarItemColor(1)),
        index: 1,
      ),
      NavBar(
        routeName: RouteNames.HOME,
        item: Text("About",
            style: TextStyles.getNavigationBarItemColor(2)),
        index: 2,
      ),

      NavBar(
        routeName: RouteNames.HOME,
        item: Text("Contact",
            style: TextStyles.getNavigationBarItemColor(3)),
        index: 3,
      ),

    ].obs;
  }

  final _visible = 0.0.obs;
  double get visible => _visible.value;

  getVisibility() async {
    _visible.value = 0.0;
    await Future.delayed(const Duration(milliseconds: 200));
    _visible.value = 1.0;
  }
}
