import 'package:farmanullah_portfolio/components/project_card.dart';
import 'package:farmanullah_portfolio/models/project_model.dart';
import 'package:farmanullah_portfolio/views/projects/projects_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutterfire_ui/firestore.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
    Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Container(
                  height: Get.height,
                  width: Get.width,
               
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
               
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

    AnimatedAlign(

         alignment: ResponsiveWrapper.of(context).isSmallerThan(TABLET) ? Alignment.bottomLeft : Alignment.bottomRight,
      duration: const Duration(seconds: 1),
      curve: Curves.fastOutSlowIn,
        child: Row(
          children: [
    Flexible(child: FaIcon(FontAwesomeIcons.graduationCap,size: 100,)),
SizedBox(width: 10,),
    Flexible(child:  
      FittedBox(
      child: RichText(
                      text: TextSpan(
                        text: "Msc Computer science ",
                        style: TextStyles.heading4
                            ?.copyWith(fontWeight: FontWeight.bold),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Quaid-i- azam university Islamabad',
                              style: TextStyles.heading4?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.cyan)),
                        ],
                      ),
                    ),
      ),), 
          ],
        ),
      ),
         AnimatedAlign(

               alignment: ResponsiveWrapper.of(context).isSmallerThan(TABLET) ? Alignment.topLeft : Alignment.center,
              duration: const Duration(seconds: 1),
              curve: Curves.fastOutSlowIn,
           child: SizedBox(

                     
                        width: Get.width*0.4,
                        height: Get.width*0.2,
             
                        child: Card(
                          
                          color: Colors.blue.withOpacity(0.3),
                          child: Column(
                            
                crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                      
                      
                      Text("As a Computer science graduate i am exicted to begin my career as a software enginerr",
                      
                      textAlign:TextAlign.center,
                      )
                      
                      
                        ],),),
                      ),
         )
                    ],
                  ),
                ),
              ),
            
          
  
        ],
      ),
    );
  }







}
