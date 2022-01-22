import 'package:farmanullah_portfolio/components/project_card.dart';
import 'package:farmanullah_portfolio/models/project_model.dart';
import 'package:farmanullah_portfolio/views/about/about_controller.dart';
import 'package:farmanullah_portfolio/views/projects/projects_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutterfire_ui/firestore.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../textstyles.dart';

class AboutView extends StatelessWidget {
  final _controller = Get.find<AboutController>();
  AboutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
_controller.getVisibility();

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
           Padding(
             padding:EdgeInsets.symmetric(vertical: 10,horizontal: 20) ,
             child: Container(
               width: double.infinity,
               child: AnimatedAlign(
                      alignment: ResponsiveWrapper.of(context).isSmallerThan(TABLET) ? Alignment.center: Alignment.topLeft,
      duration: const Duration(seconds: 1),
      curve: Curves.fastOutSlowIn,
                 child: Container(
                   child:FaIcon(FontAwesomeIcons.graduationCap,size: 50,)),
                 ),
               ),
             ),
           
               
          // RichText(
          //   text: TextSpan(
          //     text: "As a Computer science graduate i am exicted to begin my career as a software enginerr ",
          //     style: TextStyles.body1
          //         ?.copyWith(fontWeight: FontWeight.bold),
          //     children: <TextSpan>[
          //       TextSpan(
          //           text: 'Farman Ullah',
          //           style: TextStyles.heading5?.copyWith(
          //               fontWeight: FontWeight.bold,
          //               color: Colors.cyan)),
          //     ],
          //   ),
          // ),
        
        
        
          // FittedBox(
          //   child: Text(
          //     "Projects Completed ",
          //     style: TextStyles.heading2?.copyWith(
          //         color: Colors.white, fontWeight: FontWeight.bold),
          //   ),
          // ),

      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
 Obx(()=>
    AnimatedOpacity(
       curve: Curves.easeInCirc,
                  opacity: _controller.visible,
                  duration: const Duration(milliseconds: 500),
     child: Container(
                   width: double.infinity,
                   child: FittedBox(
                              child: Text(
                                "GRADUATION ",
               
               
                                style: 
                                
                                ResponsiveWrapper.of(context).isSmallerThan(TABLET)?
                                
                                TextStyles.heading4?.copyWith(
                                    color: Colors.cyan.shade900, fontWeight: FontWeight.bold):
                                     TextStyles.heading3?.copyWith(
                                    color: Colors.cyan.shade900, fontWeight: FontWeight.bold)
                              ),
                            ),
                 ),
   ),
 ), 

             FittedBox(child: Text("MSC",style: TextStyles.heading1,)),
              FittedBox(child: Text("COMPUTER SCIENCE",style: TextStyles.heading1,)),

 FittedBox(
   child: Text(
     "QUAID-I-AZAM UNIVERSITY ISLAMABAD ",
             
             
     style: TextStyles.heading1?.copyWith(color: Colors.white,fontWeight: FontWeight.bold)
     
   
   ),
 ),

        ],
      ),

         Column(
           mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.center,
           children: [
    
Text("My Work"),

/*
         Container(
            decoration: new BoxDecoration(
              gradient: new LinearGradient(
            colors: [
              Colors.grey.shade900,
              Colors.blueGrey ,
                      ],
          )),
           
           child: 
           
           
           
           Row(
           mainAxisAlignment: MainAxisAlignment.start,
           crossAxisAlignment: CrossAxisAlignment.center,
           
           
           children: [


Flexible(

  
  child: Container(
      decoration: new BoxDecoration(
              gradient: new LinearGradient(
            colors: [
              Colors.grey.shade900,
              Colors.blueGrey  ,
                 Colors.grey.shade900,        ],
                        
          )),
width: Get.width,
 
  child:   Expanded(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Hi, Greetings",
        
           style: GoogleFonts.aldrich
        
        (
textStyle: TextStyles.heading3

        ),
        ),
        Text("As a computer science graduate i have started my career as a software developer, i build top quality apps for android, iOS and web using google's flutter"
        ,
        textAlign: TextAlign.center,
        style: GoogleFonts.almarai
        
        (
textStyle: TextStyles.heading5

        ),
        
        )
      ],
    ),
  ),
),),
Flexible(

  
  child: SizedBox(
width: Get.width,
      height: 400,
  child:   Card(
  
    margin: EdgeInsets.zero,
    
  
    
  
    child: Text("kkdkd"),
  
    color: Colors.red,),
),),
      Flexible(

  
  child: SizedBox(
  height: 400,

width: Get.width,
 
  child:   Card(
  
    margin: EdgeInsets.zero,
    
  
    
  
    child: Text("kkdkd"),
  
    color: Colors.red,),
),),       

           ],),
         )
         
          */

        ResponsiveRowColumn(layout: 
        
        
           ResponsiveWrapper.of(context).isSmallerThan(TABLET)
              ? ResponsiveRowColumnType.COLUMN
              : ResponsiveRowColumnType.ROW,
          // columnPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
           rowCrossAxisAlignment: CrossAxisAlignment.start,
           rowMainAxisAlignment: MainAxisAlignment.center,
          // columnCrossAxisAlignment: CrossAxisAlignment.center,

           children: [
ResponsiveRowColumnItem(
  
  rowFlex: 1,
  
  child: 

 SizedBox(
 height: 400,
 width: double.infinity,

 
 child:   Container(
 

  decoration: new BoxDecoration(
              gradient: new LinearGradient(
            colors: [
              Colors.grey.shade900,
              Colors.blueGrey ,
                      ],
          )),
   margin: EdgeInsets.zero,
   
 
   
 
   child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Hi, Greetings",
        
           style: GoogleFonts.aldrich
        
        (
textStyle: TextStyles.heading3

        ),
        ),
        Text("As a computer science graduate i have started my career as a software developer, i build top quality apps for android, iOS and web using google's flutter"
        ,
        textAlign: TextAlign.center,
        style: GoogleFonts.almarai
        
        (
textStyle: TextStyles.heading5

        ),
        
        )
      ],
    ),
 
   ),
),       

),
ResponsiveRowColumnItem(
  rowFlex: 1,
  
  child: 

 SizedBox(
 height: 400,

width: double.infinity,
 
 child:   Container(
   decoration: new BoxDecoration(
              gradient: new LinearGradient(
            colors: [
              Colors.black,
              Colors.blueGrey ,
                      ],
          )),
   margin: EdgeInsets.zero,
   
 
   
 
   child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Hi, Greetings",
        
           style: GoogleFonts.aldrich
        
        (
textStyle: TextStyles.heading3

        ),
        ),
     
             Text("Hi, Greetings",
        
           style: GoogleFonts.aldrich
        
        (
textStyle: TextStyles.heading3

        ),
        ),


        Lottie.asset("assets/lottie/completed.json",width: 200)
      ],
    ),
 
 ),
),       

),
ResponsiveRowColumnItem(
  rowFlex: 1,
  
  child: 

 SizedBox(
 height: 400,

width: double.infinity,
 
 child:   Container(
   decoration: new BoxDecoration(
              gradient: new LinearGradient(
            colors: [
              Colors.black,
              Colors.blueGrey ,
                      ],
          )),
   margin: EdgeInsets.zero,
   
 
   
 
   child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Hi, Greetings",
        
           style: GoogleFonts.aldrich
        
        (
textStyle: TextStyles.heading3

        ),
        ),
        Text("As a computer science graduate i have started my career as a software developer, i build top quality apps for android, iOS and web using google's flutter"
        ,
        textAlign: TextAlign.center,
        style: GoogleFonts.almarai
        
        (
textStyle: TextStyles.heading5

        ),
        
        ),
             Text("Hi, Greetings",
        
           style: GoogleFonts.aldrich
        
        (
textStyle: TextStyles.heading3

        ),
        ),
      ],
    ),
 
 ),
),       

)

           ],
        )
        
           ],
         )
        ],
      ),
    );
  }







}
