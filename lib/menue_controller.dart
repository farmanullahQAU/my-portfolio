import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'route_names.dart';

class MenuController extends GetxService {
  String? currentRoute;

  @override
  void onInit() {
    readStorage();

    _initKeys();
    super.onInit();
  }

  Future savCurrentIndex(String routeName, int index) async {
    final storage = GetStorage();
    await storage.write("routeName", routeName);
    await storage.write("index", index);
  }

  static final _currentIndex = 0.obs;
  int get currentIdex => _currentIndex.value;
  set currentIdex(int index) => _currentIndex.value = index;

//   final List<Widget> screens = [
//  IntroView(),

//  const About(),

//  Container(height: 500,width: 700,color: Colors.red,)

//   ];

  List<NavBar> getNavigationBarItems() {
    return [
      NavBar(
        item: const Text("HOME"),
        onTap: () async {
          currentIdex = 0;
          //  Scrollable.ensureVisible(
          //           homeGlobalKey.currentContext!,
          //           duration: const Duration(seconds: 1),
          //         );
          await savCurrentIndex(RouteNames.HOME, 0);
          Get.back();
          Get.toNamed(RouteNames.HOME);
        },
        index: 0,
        routeName: RouteNames.HOME,
      ),
      NavBar(
        onTap: () async {
          // scrollController.animateTo(scrollController.position.maxScrollExtent, duration: Duration(milliseconds: 1000), curve: Curves.ease
          // );

          // Scrollable.ensureVisible(
          //           aboutGlobalKey.currentContext!,
          //           duration: const Duration(seconds: 1),
          //         );
          //  currentIdex==1?null: Get.toNamed(RouteNames.ABOUT);
          //   currentIdex=1;
          await savCurrentIndex(RouteNames.ABOUT, 1);

          Get.toNamed(RouteNames.ABOUT);
          currentIdex = 1;
        },
        routeName: RouteNames.HOME,
        item: const Text("ABOUT ME"),
        index: 1,
      ),
      NavBar(
        onTap: () async {
          currentIdex = 2;

          // await Scrollable.ensureVisible(

          //           projectGlobalKey.currentContext!,
          //           duration: const Duration(seconds: 1),
          //         );
        },
        routeName: RouteNames.HOME,
        item: const Text(
          "PROJECTS",
        ),
        index: 2,
      ),
      NavBar(
        routeName: RouteNames.HOME,
        item: const Text(
          "CONTACT",
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

  //to control menu for mobile and web

  late final GlobalKey<ScaffoldState> _homeScaffoldKey;
  late final GlobalKey<ScaffoldState> _aboutScaffoldKey;

  GlobalKey<ScaffoldState> get homeScaffoldKey => _homeScaffoldKey;

  GlobalKey<ScaffoldState> get aboutScaffoldKey => _homeScaffoldKey;

  void controlHomeMenu() {
    if (!homeScaffoldKey.currentState!.isDrawerOpen) {
      homeScaffoldKey.currentState!.openDrawer();
    }
  }

  void controlAboutMenu() {
    if (!aboutScaffoldKey.currentState!.isDrawerOpen) {
      aboutScaffoldKey.currentState!.openDrawer();
    }
  }

//to read last typed munu index and route name
  void readStorage() async {
    final storage = GetStorage();
    currentRoute = storage.read("routeName");
    currentIdex = storage.read("index");

    print(currentRoute);

    print(currentIdex);
  }

  void _initKeys() {

    _homeScaffoldKey=GlobalKey<ScaffoldState>();
    _aboutScaffoldKey=GlobalKey<ScaffoldState>();

  }
}

class NavBar {
  Widget? item;
  String routeName;
  int? index;

  VoidCallback? onTap;
  NavBar({this.item, this.index, required this.routeName, this.onTap});
}
