import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:farmanullah_portfolio/constants.dart';
import 'package:farmanullah_portfolio/menue_controller.dart';
import 'package:farmanullah_portfolio/textstyles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'home_controller.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      key: Get.find<MenuController>().scaffoldKey,
      drawer:
          ResponsiveWrapper.of(context).isMobile ? _addMobileDrawer() : null,
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
          "assets/pic2.jpg",
        ))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _addNavigationBar(),
            Expanded(
              child: Obx(
                () => Get.find<HomeController>()
                    .screens
                    .elementAt(Get.find<HomeController>().currentIdex),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _addNavigationBar() {
    return Container(
      child: ResponsiveWrapper.of(Get.context!).isMobile
          ? IconButton(
              onPressed: () {
                key:
                Get.find<MenuController>().controlMenu();
              },
              icon: Icon(Icons.menu))
          : Container(
              height: 60,
              color: secondaryColor,
              child: Obx(
                () => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: Get.find<HomeController>()
                      .getNavBar()
                      .map((e) => TextButton(
                          onPressed: () {
                            Get.find<HomeController>().currentIdex = e.index!;
                          },
                          child: e.item!))
                      .toList(),
                ),
              ),
            ),
    );
  }

  Widget _addMobileDrawer() {
    return Drawer(
        backgroundColor: Colors.white,

        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text('Drawer Header'),
              ),
              ...Get.find<HomeController>().getNavBar().map((e) => ListTile(
                    onTap: () {
                      Get.find<HomeController>().currentIdex = e.index!;
                    },
                    title: e.item,
                  ))
            ]));
  }
}

class HomePageContents extends StatelessWidget {
  const HomePageContents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<HomeController>().getVisibility();
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 80),
      child: Obx(
        () => AnimatedOpacity(
          curve: Curves.easeInCirc,
          opacity: Get.find<HomeController>().visible,
          duration: const Duration(milliseconds: 500),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  child: RichText(
                text: TextSpan(
                  text: "Hi, I'm ",
                  style: TextStyles.heading5
                      ?.copyWith(fontWeight: FontWeight.bold),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Farman Ullah',
                        style: TextStyles.heading5?.copyWith(
                            fontWeight: FontWeight.bold, color: Colors.cyan)),
                  ],
                ),
              )),
              FittedBox(
                child: Text(
                  "Flutter Developer ",
                  style: TextStyles.heading2?.copyWith(
                      color: Colors.red, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "I am a flutter developer has around 1+ years of experience",
                      style:
                          TextStyles.subtitle1?.copyWith(color: Colors.white60),
                    ),
                  ],
                ),
              ),
              Container(
                width: Get.width * 0.6,
                child: Text(
                  "I build top quality, and professional apps for android,iOs and web useing google's flutter",
                  style: TextStyles.subtitle1?.copyWith(color: Colors.white54),
                ),
              ),
              SizedBox(height: 20,),
         Container(
           width: 100,
           height: 50,
           color: Colors.cyan.shade900,
           
           child: TextButton(onPressed: (){}, child: Text("Hire me"
           
           ,style: TextStyles.subtitle1?.copyWith(color: Colors.white),
           
           )))


            ],
          ),
        ),
      ),
    );
  }
}
