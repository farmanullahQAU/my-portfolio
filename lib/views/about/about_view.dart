// ignore_for_file: avoid_unnecessary_containers

import 'package:farmanullah_portfolio/components/app_drawer.dart';
import 'package:farmanullah_portfolio/components/navigationbar.dart';
import 'package:farmanullah_portfolio/constants/constants.dart';
import 'package:farmanullah_portfolio/textstyles.dart';
import 'package:farmanullah_portfolio/views/about/about_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../assets_path.dart';
import '../../constants/text_const.dart';
import '../../menue_controller.dart';
import '../../responsive/responsive_wrapper.dart';
import '../skills/skills_view.dart';

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
        body: Container(
          decoration:  BoxDecoration(
              image: 
              ResponsiveWidget.isSmallScreen(context)?
              null:
              DecorationImage(
                  fit: BoxFit.cover, image:
                  
              
                  
                   AssetImage(backgroundImagePath))),
          child: Stack(
            alignment: Alignment.topLeft,
            children: [
              /*


           ScaleTransition(

                    scale: controller.aboutAnimation,
             S
              */  

              SingleChildScrollView(
                controller: controller.scrollController,
                child: Padding(
                  padding: EdgeInsets.only(top: height * 0.2),
                  child: SizeTransition(
                       sizeFactor: controller.aboutAnimation,
      axis: Axis.horizontal,
      axisAlignment: -1.0,
                    child: 
                    
                    
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                  
                  
                        Container(width:double.infinity,height: 50,color: Colors.black.withOpacity(0.2),),
                        Container(
                            color: Colors.black.withOpacity(0.5),
                            child: _addAboutContents(screenWidth, context)),


                            Container(
                              margin: EdgeInsets.symmetric(vertical: 400),
                              
                              child: FittedBox(child: Text("MY SKILLS",style: TextStyles.heading1?.copyWith(color: Colors.white),))),
                       SkillsView(),
               
                      ],
                    ),
                  ),
                ),
              ),

              //shows drawer for mobile and menu row for tablet and desktop
              addHeader(context)
            ],
          ),
        ),
      ),
    );
  }

  Widget _addAboutContents(double screenWidth, BuildContext context) {
  
    var sizedBoxColumn2 = const SizedBox(
      height: 50,
    );
    final educationDetails = RichText(
    textAlign: !ResponsiveWidget.isSmallScreen(context)?TextAlign.justify:TextAlign.center,

      text: TextSpan(
        text: eductionDetails,
        style: TextStyles.subtitle1?.copyWith(color: Colors.white),
        children: <TextSpan>[
          TextSpan(
              text: "from ",
              style: TextStyles.subtitle1?.copyWith(color: Colors.white)),
          TextSpan(
              text: university,
              style: TextStyles.subtitle1
                  ?.copyWith(color: Colors.red, fontWeight: FontWeight.bold)),
          TextSpan(
              text: " in 2018",
              style: TextStyles.subtitle1?.copyWith(color: Colors.white)),
        ],
      ),
    );
  final detailsExperience = RichText(

    textAlign: !ResponsiveWidget.isSmallScreen(context)?TextAlign.justify:TextAlign.center,
      text: TextSpan(
        text: experienceDetails,
        style: TextStyles.subtitle1,
        children: <TextSpan>[
          TextSpan(
              text: "at ",
              style: TextStyles.subtitle1?.copyWith(color: Colors.white)),
          TextSpan(
              text: companyName,
              style: TextStyles.subtitle1
                  ?.copyWith(color: Colors.red, fontWeight: FontWeight.bold)),
          TextSpan(
              text: " Islamabad",
              style: TextStyles.subtitle1?.copyWith(color: Colors.white)),
        ],
      ),
    );
 var titleExperience =
        Text(experienceTitle.toUpperCase(), style: TextStyles.headingTextStyle);


    var educationTitle =
        Text(education.toUpperCase(), style: TextStyles.headingTextStyle);
    var title = Text(aboutMe.toUpperCase(), style: TextStyles.headingTextStyle);

    

    var description = Text(
      aboutDescription,
      textAlign: 
      
     !ResponsiveWidget.isSmallScreen(context)?

      
      TextAlign.justify:TextAlign.center,
      style: TextStyles.subtitle1,
    );
    var fypTitle = Text(fyp.toUpperCase(), style: TextStyles.headingTextStyle);

    var aboutWelcomeText = Text(welcomeAbout,style: TextStyles.heading4,textAlign:TextAlign.center,);
    return ResponsiveWidget(
      largeScreen: Container(
           margin: EdgeInsets.only(
                  left: screenWidth * 0.1, top: 0, bottom: 0, right: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

          aboutWelcomeText,
          sizedBoxColumn2,
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Flexible(
                //   flex: 1,
                //   child: AnimatedSize(
                //       curve: Curves.easeIn,
                //       duration: const Duration(seconds: 1),
                //       child: _addImageAvatar(context,screenWidth)),
                // ),

                Flexible(
                  flex: 3,
                  child: Container(
                    // margin: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        title,
                        description,
                        sizedBoxColumn2,
                        educationTitle,
                        educationDetails,
                        sizedBoxColumn2,
                        fypTitle,
                        description,
                        sizedBoxColumn2,
                        titleExperience,
                        detailsExperience,
                        // _addSocilaIcon(50),
                      ],
                    ),
                  ),
                ),

                const Spacer(
                  flex: 1,
                )
              ],
            ),
          ],
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
                  // AnimatedSize(
                  //     curve: Curves.easeIn,
                  //     duration: const Duration(seconds: 1),
                  //     child: _addImageAvatar(context, screenWidth)),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      _addImageAvatar(context, screenWidth),
                      sizedBoxColumn2,
                      aboutWelcomeText,
                   SizedBox(height: 100,),
                      
                  
                      title,
                      description,
                   SizedBox(height: 100,),

                      educationTitle,
                      educationDetails,
                   SizedBox(height: 100,),

                      sizedBoxColumn2,
                      fypTitle,
                      description,
                   SizedBox(height: 100,),

                      titleExperience,
                      detailsExperience,
                   SizedBox(height: 100,),

                      _addSocilaIcon(50),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _addImageAvatar(BuildContext context, double screenWidth )
{
   return  CircleAvatar(
      backgroundColor: Colors.white,
      radius: ResponsiveWidget.isSmallScreen(context) ? 155 : 205,
      child: CircleAvatar(
        backgroundColor: Colors.red,
        radius: ResponsiveWidget.isSmallScreen(context) ? 150 : 200,
        backgroundImage: Image.asset(
          profileImagePath,

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
            const SizedBox(
              width: 10,
            ),
            FaIcon(
              FontAwesomeIcons.twitterSquare,
              color: socialIconColor,
              size: iconSize,
            ),
            const SizedBox(
              width: 10,
            ),
            FaIcon(
              FontAwesomeIcons.mailBulk,
              color: socialIconColor,
              size: iconSize,
            ),
            const SizedBox(
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

//   _addEducationContents(BuildContext context,double screenWidth) {

// final educationDetails=RichText(
//   text: TextSpan(
//     text: eductionDetails,
//      style: TextStyles.subtitle1?.copyWith(color: Colors.white),
//     children:  <TextSpan>[
//       TextSpan(text: "from ", style: TextStyles.subtitle1?.copyWith(color: Colors.white)),

//       TextSpan(text: university, style: TextStyles.subtitle1?.copyWith(color: Colors.red,fontWeight: FontWeight.bold)),
//       TextSpan(text: " in 2018", style: TextStyles.subtitle1?.copyWith(color: Colors.white)),

//     ],
//   ),
// );

//     var title = Text(education.toUpperCase(), style: TextStyles.headingTextStyle);

// return Container(
//   child: Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
// title,

//       educationDetails,
//     ],
//   ));

//   }
  Obx addHeader(BuildContext context) {
    return Obx(
      () => AnimatedSwitcher(
        transitionBuilder: (child, animation) => SizeTransition(
          sizeFactor: animation,
          child: child,
        ),
        duration: const Duration(milliseconds: 400),
        child: controller.isScrollDown.isTrue &&
                !ResponsiveWidget.isSmallScreen(context)
            ? Container(
                color: Colors.black,
                key: Key("coloredAppBar"),
                child: Header(
                  onTap: () {
                    //open and close drawer for mobile view
                    Get.find<MenuController>().controlAboutMenu();
                  },
                ),
              )
            : Header(
                key: Key("black"),
                onTap: () {
                  Get.find<MenuController>().controlAboutMenu();
                },
              ),
      ),
    );
  }
}



