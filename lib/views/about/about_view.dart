// ignore_for_file: avoid_unnecessary_containers

import 'package:farmanullah_portfolio/components/app_drawer.dart';
import 'package:farmanullah_portfolio/components/image_avatar.dart';
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
      
        drawer: const AppDrawer(),
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
          child: Container(
  color: Colors.black.withOpacity(0.6),

            child: Stack(
              alignment: Alignment.topLeft,
              children: [
       

                SingleChildScrollView(
                  controller: controller.scrollController,
                  child: Container(
                    
                    margin: EdgeInsets.only(top: height * 0.1+20),
                    child: SizeTransition(
                         sizeFactor: controller.aboutAnimation,
      axis: Axis.horizontal,
      axisAlignment: -1.0,
                      child: 
                      
                      
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                    
                    
                          Container(
                            margin: EdgeInsets.only(top: 50),
                              // color: Colors.black.withOpacity(0.5),
                              child: _addAboutContents(screenWidth, context)),


                              Container(
  color: Colors.black.withOpacity(0.5),

                                width: double.infinity,
                                height: 600,
                             

                                //  padding: const EdgeInsets.only(top: 100),
                                
                                child: Center(child: FittedBox(child: Text("MY SKILLS",
                                
                                
                                
                                style: 
                                
                                ResponsiveWidget.isLargeScreen(context)?
                                
                                TextStyles.heading2?.copyWith(color: Colors.white):TextStyles.heading3)))),
                         const SkillsView(),
                  
                 
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
      ),
    );
  }



  Widget _addAboutContents(double screenWidth, BuildContext context) {
  
    var sizedBoxColumn2 = const SizedBox(
      height: 50,
    );
      final tenPxheightSizedBox = const  SizedBox(
      height: 10,
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
      var fypdescription = Text(
      fypDescription,
      textAlign: 
      
     !ResponsiveWidget.isSmallScreen(context)?

      
      TextAlign.justify:TextAlign.center,
      style: TextStyles.subtitle1,
    );

    var aboutWelcomeText = Text(welcomeAbout,style: TextStyles.heading4,textAlign:TextAlign.center,);
    var icon = ResponsiveWidget.isSmallScreen(context)? const Icon(Icons.circle,color: Colors.red,):const Icon(Icons.square,color: Colors.red,);
    return ResponsiveWidget(
      //desktop or tablet view
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
            

                Flexible(
                  flex: 3,
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            icon,
                            const SizedBox(width: 5,),
                            title,
                          ],
                        ),
                        description,
                        sizedBoxColumn2,
                        Row(
                          children: [
                         icon,
                            const SizedBox(width: 5,),

                            educationTitle,
                          ],
                        ),
                        educationDetails,
                        sizedBoxColumn2,
                        Row(
                          children: [
                             icon,
                            const SizedBox(width: 5,),

                            fypTitle,
                          ],
                        ),
                        fypdescription,
                        sizedBoxColumn2,
                        Row(
                          children: [
                            icon,
                            const SizedBox(width: 5,),
                            
                            titleExperience,
                          ],
                        ),
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
            sizedBoxColumn2,
            // _addSocilaIcon(30),
            sizedBoxColumn2,

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
              
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const ImageAvatar(),
                      sizedBoxColumn2,
                      aboutWelcomeText,
                   const SizedBox(height: 100,),
                      
                  
                      Column(
                        children: [
                          icon,
                          title,
                          tenPxheightSizedBox,
                        ],
                      ),
                  
                      description,
                   const SizedBox(height: 100,),

                      Column(
                        children: [
                          icon,

                          educationTitle,
                          tenPxheightSizedBox
                        ],
                      ),
                      educationDetails,
                   const SizedBox(height: 100,),

                      sizedBoxColumn2,
                      Column(
                        children: [
                          icon,
                          fypTitle,
                          tenPxheightSizedBox
                        ],
                      ),
                      description,
                   const SizedBox(height: 100,),

                      Column(
                        children: [
                          icon,
                          titleExperience,
                          tenPxheightSizedBox
                        ],
                      ),
                      detailsExperience,
                   const SizedBox(height: 100,),

                      // _addSocilaIcon(50),
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


  Widget addHeader(BuildContext context) {
    return AnimatedSwitcher(
        transitionBuilder: (child, animation) => SizeTransition(
          sizeFactor: animation,
          child: child,
        ),
        duration: const Duration(milliseconds: 400),
        child: Header(
          title: aboutViewTitle,
            key: const Key("sim"),
            onTap: () {
              Get.find<MenuController>().controlAboutMenu();
            },
          ),
      );
  }
}



