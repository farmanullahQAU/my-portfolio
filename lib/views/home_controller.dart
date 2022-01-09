import 'package:farmanullah_portfolio/views/projects/projects_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../menue_controller.dart';
import '../route_names.dart';
import '../textstyles.dart';
import 'home_view.dart';

class HomeController extends GetxController {
  var _currentIndex = 0.obs;
  int get currentIdex => _currentIndex.value;
  set currentIdex(int index) => _currentIndex.value = index;

  final List<Widget> screens = [
    HomePageContents(),
    ProjectsView(),
    Text("Education"),
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
      // NavBar(
      //   routeName: RouteNames.COUPONS,
      //   item: Text(
      //     "COUPONS",
      //     style: TextStyles.subtitle2?.copyWith(
      //         color: this.currentIdex == 1 ? Colors.blue : Colors.grey),
      //   ),
      //   index: 1,
      // ),

      NavBar(
        routeName: RouteNames.HOME,
        item: Text("About", style: TextStyles.getNavigationBarItemColor(1)),
        index: 1,
      ),
      NavBar(
        routeName: RouteNames.HOME,
        item: Text("Projects",
            style: TextStyles.subtitle2?.copyWith(
                color: this.currentIdex == 3 ? Colors.red : Colors.grey)),
        index: 3,
      ),

      NavBar(
        routeName: RouteNames.HOME,
        item: Text("Contact",
            style: TextStyles.subtitle2?.copyWith(
                color: this.currentIdex == 4 ? Colors.red : Colors.grey)),
        index: 4,
      ),
      NavBar(
        routeName: RouteNames.HOME,
        item: Text("SUBSCRIPTION",
            style: TextStyles.subtitle2?.copyWith(
                color: this.currentIdex == 5 ? Colors.blue : Colors.grey)),
        index: 5,
      ),
      NavBar(
        routeName: RouteNames.HOME,
        item: Row(
          children: [
            Icon(
              Icons.exit_to_app,
              color: Colors.grey,
            ),
            Text("LOGIN",
                style: TextStyles.subtitle2?.copyWith(
                    color: this.currentIdex == 6 ? Colors.blue : Colors.grey)),
          ],
        ),
        index: 6,
      ),
      // Image.asset(logoPath),
      // TextButton(
      //     onPressed: () {
      //       Get.toNamed(RouteNames.HOME);
      //     },
      //     child: Text(
      //       "HOME",
      //       style: TextStyles.headerBody1,
      //     )),
      // TextButton(
      //     onPressed: () {
      //       Get.toNamed(RouteNames.COUPONS);
      //     },
      //     child: Text(
      //       "COUPONS",
      //       style: TextStyles.headerBody1,
      //     )),
      // TextButton(
      //     onPressed: () {},
      //     child: Text("FAVORITE", style: TextStyles.headerBody1)),
      // TextButton(
      //     onPressed: () {
      //       Get.toNamed(RouteNames.CATEGORIES);
      //     },
      //     child: Text("CATEGORIES", style: TextStyles.headerBody1)),
      // TextButton(
      //     onPressed: () {
      //       Get.toNamed(RouteNames.ABOUTCOMMUNITY);
      //     },
      //     child: Text("SUBSCRIPTION", style: TextStyles.headerBody1)),
      // TextButton(
      //     onPressed: () {
      //       Get.to(() => LoginView());
      //     },
      //     child: Icon(Icons.exit_to_app))
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
