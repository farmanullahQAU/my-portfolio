import 'package:farmanullah_portfolio/components/project_card.dart';
import 'package:farmanullah_portfolio/models/project_model.dart';
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
  final _projectController = Get.find<ProjectsViewController>();
  AboutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<ProjectsViewController>().getVisibility();

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
 Container(
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

         Container(
           width: double.infinity,
           height: ResponsiveWrapper.of(context).scaledWidth/3,
           margin: EdgeInsets.zero,
           
           color: Colors.cyan.shade900.withOpacity(0.5),
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [
               Text("I AM FARMAN ULLAH, AS A COMPUTER SCIENCE GRADUATE I HAVE STARTED MY CAREER AS A SOFTWARE DEVELOPER, I BUILD  TOP QUALITY APPLICATION FOR ANDROID iOS AND WEB  USING GOOGLE'S FLUTTER,",
         textAlign:TextAlign.center,
         
         style: GoogleFonts.aclonica(  
         
         
         ),
         ),

         Row(
           mainAxisAlignment: MainAxisAlignment.center,
           
           children: [


 Flexible(child: Icon(Icons.email,size: 40,),),
             
             Flexible(child: FittedBox(child: Text("farmanullahk437@gmail.com",style: TextStyles.heading4,)),),

         ],)
         
            ,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Flexible(child: Icon(Icons.phone,size: 40,),),
             
             Flexible(child: Text("+923049575366",style: TextStyles.heading4,),)
            ],)
             ],
           ),)
        ],
      ),
    );
  }







}
