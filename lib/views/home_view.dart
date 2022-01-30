import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:farmanullah_portfolio/constants.dart';
import 'package:farmanullah_portfolio/menue_controller.dart';
import 'package:farmanullah_portfolio/textstyles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:url_launcher/url_launcher.dart';

import 'home_controller.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

//       bottomNavigationBar: BottomNavigationBar(
//         type: BottomNavigationBarType.fixed,
        
//         backgroundColor: Colors.black,
//         items: [

//         BottomNavigationBarItem(
          
          
//           icon: Icon(Icons.email),label: "030494994993"),
//          BottomNavigationBarItem(label: "farmanullahk437@gmail.com", icon: Icon(Icons.email) ),
//          BottomNavigationBarItem(label: "farmanullahk437@gmail.com", icon: Icon(Icons.email) )
// ,
//          BottomNavigationBarItem(label: "farmanullahk437@gmail.com", icon: Icon(Icons.email) )

        


        
//       ],),
      backgroundColor: Colors.black,
      key: Get.find<MenuController>().scaffoldKey,
      drawer:
          ResponsiveWrapper.of(context).isSmallerThan(TABLET) ? _addMobileDrawer() : null,
      body: Container(
        decoration:
        ResponsiveWrapper.of(context).isSmallerThan(TABLET)?null:
         BoxDecoration(
            image: DecorationImage(
              
             
                image: AssetImage(
                  
          "assets/pic2.jpg",
        ))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
      child: ResponsiveWrapper.of(Get.context!).isSmallerThan(TABLET)
          ? IconButton(
              onPressed: () {
                key:
                Get.find<MenuController>().controlMenu();
              },
              icon: Icon(Icons.menu))
          : Container(
              height: 60,
              color: secondaryColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  
                  Flexible(
                    flex: 2,
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
                  Spacer(),
                  Flexible(flex: 2,child: Text("OPEN TO WORK"),),

                ],
              ),
            ),
    );
  }

  Widget _addMobileDrawer() {
    return Drawer(
        backgroundColor: Colors.blueGrey,


        child: ListView(
           
            padding: EdgeInsets.zero,
            children: [
               DrawerHeader(
                padding: EdgeInsets.all(1),
                decoration: BoxDecoration(
                  color: Colors.white70,
                ),
                child:Image.asset("assets/pic.jpeg",fit:BoxFit.cover),
              ),
              ...Get.find<HomeController>().getNavBar().map((e) => 
                ListTile(
                  selectedTileColor: Colors.grey,
                  selectedColor: Colors.red,
                  
              
        

                      onTap: () {
                        Get.back();

                        Get.find<HomeController>().currentIdex = e.index!;
                      },
                      title: e.item,
                    ),
              )
            ]));
  }
}

class HomePageContents extends StatelessWidget {
  const HomePageContents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<HomeController>().getVisibility();
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 80),
        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(
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
                        style: TextStyles.heading4
                            ?.copyWith(fontWeight: FontWeight.bold),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Farman Ullah',
                              style: TextStyles.heading4?.copyWith(
                                  fontWeight: FontWeight.bold, color: Colors.cyan)),
                        ],
                      ),
                    )),
                    FittedBox(
                      child: Text(
                        "Senior Flutter Developer ",


                        style: 
                        
                        ResponsiveWrapper.of(context).isSmallerThan(TABLET)?
                        
                        TextStyles.heading4?.copyWith(
                            color: Colors.cyan, fontWeight: FontWeight.bold):
                             TextStyles.heading2?.copyWith(
                            color: Colors.cyan, fontWeight: FontWeight.bold)
                      ),
                    ),
                    Container(
                      height: 80,
                      child: Row(
  
  children: <Widget>[
     Flexible(
       child: FittedBox(
             child: Text(
              'I BUILD TOP QUALITY ',
              style: TextStyles.heading4?.copyWith(color: Colors.white
              ,fontWeight: FontWeight.bold)
    ),
       ),
     ),
    DefaultTextStyle(
       style: TextStyles.heading4!.copyWith(color: Colors.cyan
      ,fontWeight: FontWeight.bold),
      child: AnimatedTextKit(
            totalRepeatCount: 3,
            animatedTexts: [
              RotateAnimatedText('ANDROID'),
              RotateAnimatedText('iOS'),
              RotateAnimatedText('& WEB APPS'),
            ],
            onTap: () {
              print("Tap Event");
            },
      ),
    ),
  ],
),
                    ),
                 
               Container(
                 width: 100,
                 height: 50,
                 color: Colors.cyan.shade900,
                 
                 child: TextButton(onPressed: (){

                   Get.find<HomeController>().currentIdex=3;
                 }, child: Text("Hire me"
                 
                 ,style: TextStyles.subtitle1?.copyWith(color: Colors.white),
                 
                 )))
    
    
                  ],
                ),
              ),
            ),
SizedBox(height: 40,),
            
Padding(
  padding: const EdgeInsets.only(left:20.0),
  child: 
  
    Row(
  
    crossAxisAlignment: CrossAxisAlignment.end,
  
    children: [
  
  
  
  _addIcons("https://www.fiverr.com/s2/74e6e04f96",Image.asset('assets/fiverr-min.png',width: 65,) ),
  
      SizedBox(width: 30,),
  
  _addIcons("https://github.com/farmanullahQAU",FaIcon(FontAwesomeIcons.github,size: 50,color: Colors.white) ),
  
  
  
  
  
  
  
      SizedBox(width: 30,),
  
      _addIcons("https://www.linkedin.com/in/farman4", FaIcon(FontAwesomeIcons.linkedin,size: 50,color: Colors.white,))
  
  
  
  
  
  
  
  ],),

),


        
        
        
        
          ],
        ),
      ),
    );
  }
Widget _addIcons(String url, Widget icon){

  return TextButton
  
  
  (
    onPressed: () async {


          if (await canLaunch(url)) {
                await launch(url, forceWebView: true);
              } else {
                throw 'Could not launch $url';
              }
    },
    child: icon);

}

}
