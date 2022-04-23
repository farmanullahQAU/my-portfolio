import 'dart:async';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../menue_controller.dart';
import '../route_names.dart';
import 'home_view.dart';

class HomeController extends   GetxController with GetTickerProviderStateMixin {
final _scrollStream=StreamController<bool>();
StreamController<bool> get scrollStream=>_scrollStream;
  final _scrollController = ScrollController();
ScrollController get scrollController=>_scrollController;
  AnimationController get animationController=>_controller;
 late final AnimationController _controller = AnimationController(
    value: 0.1,
    duration: const Duration(seconds: 3),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<double> animation = CurvedAnimation(
    parent: _controller,
     curve: Curves.fastOutSlowIn,
  );
late final AnimationController aboutAnimationController = AnimationController(
    value: 0.1,
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: false);
  late final Animation<double> aboutAnimation = CurvedAnimation(
    parent: aboutAnimationController,
     curve: Curves.fastOutSlowIn,
  );
  @override
  void onInit() {
  _scrollController.addListener(listner);
    
    super.onInit();
     initHomeContentsAnimation();
  }

  void initHomeContentsAnimation() {
    _controller.addStatusListener((AnimationStatus status) {
      if (status == AnimationStatus.completed) {
        _controller.dispose();
      } else if (status == AnimationStatus.dismissed) {
        _controller.dispose();
      }
    });
    _controller.forward();
  }
  void initAboutContentsAnimation() {
    aboutAnimationController.addStatusListener((AnimationStatus status) {
      if (status == AnimationStatus.completed) {
        aboutAnimationController.dispose();
      } else if (status == AnimationStatus.dismissed) {
        aboutAnimationController.dispose();
      }
    });
    aboutAnimationController.forward();
  }
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
              // scrollController.animateTo(scrollController.position.maxScrollExtent, duration: Duration(milliseconds: 1000), curve: Curves.ease
              // );


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
            async {
                      initAboutContentsAnimation();

              currentIdex=2;

              await Scrollable.ensureVisible(
                
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

  void listner() {


    
_scrollStream.sink.add(scrollController.offset>400);

     if (_scrollController.offset >= _scrollController.position.maxScrollExtent &&
        !_scrollController.position.outOfRange) {

   
    }
    if (_scrollController.offset <= _scrollController.position.minScrollExtent &&
        !_scrollController.position.outOfRange) {

    }
  }

  void scrollToTop() {
    Scrollable.ensureVisible(
      homeGlobalKey.currentContext!,
      duration: const Duration(seconds: 1),
    );
  }

  
}
