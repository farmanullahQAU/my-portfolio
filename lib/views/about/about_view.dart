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
    final screenWidth=Get.width;
    return WillPopScope(

         onWillPop: () async {

           Get.find<MenuController>().currentIdex=0;
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

            
            SizeTransition(

                    sizeFactor: controller.aboutAnimation,
              axis: Axis.horizontal,
              axisAlignment: -1,
              child: ResponsiveWidget(
                largeScreen:
              
              
                Container(
                  color: Colors.black,
                  
                        child: Container(
                  
                  
                  decoration: BoxDecoration(
                  
                  //       gradient: LinearGradient(
                  // tileMode: TileMode.clamp,
                  
                  // colors: [
                  //   Colors.red,
                  //   Color.fromARGB(228, 214, 29, 1),
                  
                  //   Color.fromRGBO(207, 0, 15, 1),
                  
                  
                  
                  
                  
                  
                  
                  // ],
                  // begin: Alignment.topRight,
                  // end: Alignment.bottomLeft,
                  // stops: [
                  //   0.1,
                  //   0.4,
                  //   0.6,
                  // ]
                  
                  
                  
                  
                  
                  //       )
                   
                  
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(500),bottomLeft: Radius.circular(500))),
                  margin: EdgeInsets.only(left: screenWidth*0.1,top:0,bottom: 0,right: 0),
                  
                  
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.start,
                   crossAxisAlignment: CrossAxisAlignment.center,
                  
                  
                  
                  
                 children: [
                  
                  
                  
                   Flexible(
                     flex: 1,
                     child: AnimatedSize(
                          curve: Curves.easeIn,
                          duration: const Duration(seconds: 1),
                          child: _addImageAvatar(context)
                        ),
                   ),
                  const SizedBox(width: 20,),
                    Flexible(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                  
                         Text(aboutMe.capitalizeFirst!,style: TextStyles.heading3?.copyWith(color: Colors.white),),
                         Text(aboutDescription,textAlign: TextAlign.justify,
                  
                         style: TextStyles.subtitle1?.copyWith(color: Colors.white),
                  
                         ),
                        const SizedBox(height: 30,),
                          Container(width: 200,height:
                          5,color: Colors.red,),
                  SizedBox(height: 10,),
                          _addSocilaIcon(50),
                  
                        ],
                      ),
                    )
                  
                  
                ,
                  
                  
                  
                 ],
                 ),
                        ),
                  
                  
                ),
              
              smallScreen:
              
              
                 Container(
                   decoration: const BoxDecoration(
                     
                  color: Colors.black,
                     
                    //  image: DecorationImage(
                     
                     
                    // opacity: 0.3,
                    // fit: BoxFit.cover,
                    // image: AssetImage('assets/pic2.jpg'))
                     
                     
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
                         child: _addImageAvatar(context)
                       ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                       
                          Text(aboutMe.capitalizeFirst!,style: TextStyles.heading3,),
                          Text(aboutDescription,textAlign: TextAlign.center,
                       
                          style: TextStyles.subtitle1?.copyWith(color: Colors.white),
                       
                          ),
                        // SizedBox(height: 30,),
                        //    Container(width: 200,height:
                        //    5,color: Colors.red,),

                        SizedBox(height: 20,),
                       
                           Align(
                               alignment: Alignment.center,
                               child: _addSocilaIcon(30)),
                       
                        ],
                      ),
                    )
                     
                     
                             ,
                     
                     
                     
                 ],
                 ),
                            ),
                             ],
                           ),
                     
                     
                             ),
              
              
              
              
              ),
            ),
        
        
        
        //shows drawer for mobile and menu row for tablet and desktop
          Header(onTap: (){
          
            //open and close drawer for mobile view
            Get.find<MenuController>().controlAboutMenu();
          
          
          },), 
          ],
        ),
      
      
      
      
      ),
    );
  }



  Widget _addImageAvatar(BuildContext context){
return CircleAvatar(
backgroundColor: Colors.white,
 radius: ResponsiveWidget.isSmallScreen(context)?155:205,
  child:   CircleAvatar(
    radius:ResponsiveWidget.isSmallScreen(context)?150:200,
    
    backgroundImage: Image.asset(


    "assets/pic.jpeg",fit: BoxFit.cover,).image,
    
    
    ),
);

  }

 Widget _addSocilaIcon(double iconSize) {


    return Row(
      
      
      mainAxisAlignment:ResponsiveWidget.isLargeScreen(Get.context!)? MainAxisAlignment.start:
      
      
      MainAxisAlignment.center
      ,
      children:  [
    
    ButtonBar(children: [
    
    FaIcon(FontAwesomeIcons.linkedin,color: socialIconColor,size: iconSize,),
    SizedBox(width: 10,),
    FaIcon(FontAwesomeIcons.twitterSquare,color: socialIconColor,size: iconSize,),
    SizedBox(width: 10,),

    FaIcon(FontAwesomeIcons.mailBulk,color: socialIconColor,size: iconSize,),
    SizedBox(width: 10,),

    FaIcon(FontAwesomeIcons.youtube,color: socialIconColor,size: iconSize,),
    
    
    ],)
    
    ],);
  }
}

 