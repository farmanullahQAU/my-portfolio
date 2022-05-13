import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:url_launcher/url_launcher.dart';

import 'constants/text_const.dart';
import 'models/nav_bar.dart';
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
          //  Scrollable.ensureVisible(
          //           homeGlobalKey.currentContext!,
          //           duration: const Duration(seconds: 1),
          //   
          Get.back();
          //      );
          await savCurrentIndex(RouteNames.HOME, 0);


          //delete the previous clicked view controller
          //if we want to show animation each time when tab changes.

          Get.offNamed(RouteNames.HOME);
          //adds 
          currentIdex = 0;

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

          Get.back();

          await savCurrentIndex(RouteNames.ABOUT, 1);

          Get.offNamed(RouteNames.ABOUT);
          currentIdex = 1;
        },
        routeName: RouteNames.HOME,
        item: const Text("ABOUT ME"),
        index: 1,
      ),
      NavBar(
        onTap: () async {
          Get.back();

        Get.back();

          await savCurrentIndex(RouteNames.PROJECTS, 2);

          Get.offNamed(RouteNames.PROJECTS);
          currentIdex = 2;
        },
        routeName: RouteNames.PROJECTS,
        item: const Text(
          "PROJECTS",
        ),
        index: 2,
      ),
      NavBar(
        onTap: () async {



            await savCurrentIndex(RouteNames.CONTACT, 3);

          Get.offNamed(RouteNames.CONTACT);
          currentIdex = 3;
        },
        item: const Text(
          "CONTACT",
        ),
        index: 3, routeName: '',
      ),
      NavBar(

        onTap: ()async{
          //open linkedin profile

           if (await canLaunch(linkedInProfile)) {
                await launch(linkedInProfile, forceWebView: true);
              } else {
                Get.defaultDialog(
                  
                  
                  title: "Error",middleText: "Could not launch");
                throw 'Could not launch';
              }
        },
        routeName: RouteNames.HOME,
        item: const FaIcon(FontAwesomeIcons.linkedin),
        index: 4,
      ),
       NavBar(
         onTap: (){},
        routeName: RouteNames.HOME,
        item: const FaIcon(FontAwesomeIcons.github),
        index: 5,
      ),
    ].obs;
  }

  //to control drawer for mobile

  late final GlobalKey<ScaffoldState> _homeScaffoldKey;
  late final GlobalKey<ScaffoldState> _aboutScaffoldKey;
  late final GlobalKey<ScaffoldState> _projectsViewKey;
  late final GlobalKey<ScaffoldState> _contactScaffoldKey;


  GlobalKey<ScaffoldState> get homeScaffoldKey => _homeScaffoldKey;
  GlobalKey<ScaffoldState> get projectsViewKey => _projectsViewKey;


  GlobalKey<ScaffoldState> get aboutScaffoldKey => _aboutScaffoldKey;
  GlobalKey<ScaffoldState> get contactScaffoldKey => _contactScaffoldKey;


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
  void controlContactMenu() {
    if (!contactScaffoldKey.currentState!.isDrawerOpen) {
      contactScaffoldKey.currentState!.openDrawer();
    }
  }
  
    void controlProjectsMenu() {
    if (!projectsViewKey.currentState!.isDrawerOpen) {
      projectsViewKey.currentState!.openDrawer();
    }
  }
  

//to read last typed munu index and route name
  void readStorage() async {
    final storage = GetStorage();
    currentRoute = storage.read("routeName");
    currentIdex = storage.read("index");


  }

  void _initKeys() {

    _aboutScaffoldKey=GlobalKey<ScaffoldState>();
    _homeScaffoldKey=GlobalKey<ScaffoldState>();
    _projectsViewKey=GlobalKey<ScaffoldState>();
    _contactScaffoldKey=GlobalKey<ScaffoldState>();


  }
}


