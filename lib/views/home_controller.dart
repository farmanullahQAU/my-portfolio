import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../menue_controller.dart';
import '../route_names.dart';
import 'home_view.dart';

class HomeController extends GetxController {

    final aboutGlobalKey = GlobalKey();
  final projectGlobalKey = GlobalKey();
  final homeGlobalKey = GlobalKey();
    RxBool isHover=false.obs;

  final _currentIndex = 0.obs;
  int get currentIdex => _currentIndex.value;
  set currentIdex(int index) => _currentIndex.value = index;

  final List<Widget> screens = [
    HomeView(),
    // ProjectsView(),
    // AboutView(),
    // ContactMeView(),
    // AboutView(),


  ];


  List<NavBar> getNavigationBarItems() {
    return [
      NavBar(
        item: const Text("HOME"),

        onTap: (){
              currentIdex=0;
               Scrollable.ensureVisible(
                        homeGlobalKey.currentContext!,
                        duration: const Duration(seconds: 1),
                      );
        },
        index: 0,
        routeName: RouteNames.HOME,
      ),

      NavBar(

        onTap: (){
              currentIdex=1;


              Scrollable.ensureVisible(
                        aboutGlobalKey.currentContext!,
                        duration: const Duration(seconds: 1),
                      );
        },
        routeName: RouteNames.HOME,
        item: const Text("ABOUT ME"),
        index: 1,
      ),
      NavBar(
              onTap: ()
            {

              currentIdex=2;

              Scrollable.ensureVisible(
                
                        projectGlobalKey.currentContext!,
                        duration: const Duration(seconds: 1),
                      );
        }
        ,
        routeName: RouteNames.HOME,
        item: const Text("PROJECTS",
            ),
        index: 2,
      ),

      NavBar(
        routeName: RouteNames.HOME,
        item: const Text("CONTACT",
            ),
        index: 3,
      ),




      NavBar(
        routeName: RouteNames.HOME,
        item: const FaIcon(FontAwesomeIcons.linkedin),
        index: 4,


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
