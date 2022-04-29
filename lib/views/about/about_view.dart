import 'package:farmanullah_portfolio/components/app_drawer.dart';
import 'package:farmanullah_portfolio/components/navigationbar.dart';
import 'package:farmanullah_portfolio/constants/constants.dart';
import 'package:farmanullah_portfolio/textstyles.dart';
import 'package:farmanullah_portfolio/views/about/about_controller.dart';
import 'package:farmanullah_portfolio/views/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../constants/text_const.dart';
import '../../menue_controller.dart';
import '../../responsive/responsive_wrapper.dart';

class About extends GetView<AboutViewController> {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = Get.width;
    final height = Get.height;

    return WillPopScope(
      onWillPop: () async {
        Get.find<MenuController>().currentIdex = 0;
        return true;
      },
      child: Scaffold(
        drawer: AppDrawer(),
        key: Get.find<MenuController>().aboutScaffoldKey,
        backgroundColor: Colors.black,
        body: Stack(
          alignment: Alignment.topLeft,
          children: [
            /*


         ScaleTransition(

                  scale: controller.aboutAnimation,
           S
            */

            SingleChildScrollView(
              child: Padding(
                padding:  EdgeInsets.only(top: height*0.2),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _addAboutContents(screenWidth, context),
                            SizedBox(height: 150,),


                            _addEducationContents(context,screenWidth),




                  ],
                ),
              ),
            ),

            //shows drawer for mobile and menu row for tablet and desktop
            Header(
              onTap: () {
                //open and close drawer for mobile view
                Get.find<MenuController>().controlAboutMenu();
              },
            ),
          ],
        ),
      ),
    );
  }

  SizeTransition _addAboutContents(double screenWidth, BuildContext context) {
    var title = Text(aboutMe.toUpperCase(), style: TextStyles.headingTextStyle);
    var description = Text(
      aboutDescription,
      textAlign: TextAlign.justify,
      style: TextStyles.subtitle1?.copyWith(color: Colors.white),
    );
    return SizeTransition(
      sizeFactor: controller.aboutAnimation,
      axis: Axis.horizontal,
      axisAlignment: 0.0,
      child: ResponsiveWidget(
        largeScreen: Container(
          color: Colors.black,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(500),
                    bottomLeft: Radius.circular(500))),
            margin: EdgeInsets.only(
                left: screenWidth * 0.1, top: 0, bottom: 0, right: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flexible(
                  flex: 1,
                  child: AnimatedSize(
                      curve: Curves.easeIn,
                      duration: const Duration(seconds: 1),
                      child: _addImageAvatar(context)),
                ),
                const SizedBox(
                  width: 20,
                ),
                Flexible(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      title,
                      SizedBox(
                        height: 10,
                      ),
                      description,

                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: 200,
                        height: 5,
                        color: Colors.red,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      _addSocilaIcon(50),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),

        //mobile
        smallScreen: Container(
          decoration: const BoxDecoration(
            color: Colors.black,

         
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AnimatedSize(
                        curve: Curves.easeIn,
                        duration: const Duration(seconds: 1),
                        child: _addImageAvatar(context)),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 10,
                          ),

                          title,
                          SizedBox(
                            height: 10,
                          ),
                          //add description text
                          description,

                          SizedBox(
                            height: 20,
                          ),
                             Container(
                        width: 200,
                        height: 5,
                        color: Colors.red,
                      ),

SizedBox(height: 10,),
                          _addSocilaIcon(30),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _addImageAvatar(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.white,
      radius: ResponsiveWidget.isSmallScreen(context) ? 155 : 205,
      child: CircleAvatar(
        radius: ResponsiveWidget.isSmallScreen(context) ? 150 : 200,
        backgroundImage: Image.asset(
          "assets/pic.jpeg",
          fit: BoxFit.cover,
        ).image,
      ),
    );
  }

  Widget _addSocilaIcon(double iconSize) {
    return Row(
      //show in start for small screen

      mainAxisAlignment: !ResponsiveWidget.isSmallScreen(Get.context!)
          ? MainAxisAlignment.start
          : MainAxisAlignment.center,
      children: [
        ButtonBar(
          children: [
            FaIcon(
              FontAwesomeIcons.linkedin,
              color: socialIconColor,
              size: iconSize,
            ),
            SizedBox(
              width: 10,
            ),
            FaIcon(
              FontAwesomeIcons.twitterSquare,
              color: socialIconColor,
              size: iconSize,
            ),
            SizedBox(
              width: 10,
            ),
            FaIcon(
              FontAwesomeIcons.mailBulk,
              color: socialIconColor,
              size: iconSize,
            ),
            SizedBox(
              width: 10,
            ),
            FaIcon(
              FontAwesomeIcons.youtube,
              color: socialIconColor,
              size: iconSize,
            ),
          ],
        )
      ],
    );
  }

  _addEducationContents(BuildContext context,double screenWidth) {
    var title = Text(education.toUpperCase(), style: TextStyles.headingTextStyle);

 final educationDescription = Text(
      aboutDescription,
      textAlign: TextAlign.justify,
      style: TextStyles.subtitle1?.copyWith(color: Colors.white),
    );

return ResponsiveWidget(largeScreen: Padding(
  padding:  EdgeInsets.only(left:screenWidth*0.1),
  child:   Row(
    
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
   Flexible(

     flex: 1,
     child: Opacity
     (
       opacity: 0.0,
       child: _addImageAvatar(context)),
   ),
  
  Flexible(
    flex: 1,
    child: Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
  title,

          educationDescription,
        ],
      ))),

   
  
  ],),
),

smallScreen: Container(

  margin: EdgeInsets.symmetric(horizontal: 20),
  child:   Column(
    
    children: [
  title,
SizedBox(height: 20,),
  educationDescription,
  
  
  
  
  ],),
),

);

  }
}
