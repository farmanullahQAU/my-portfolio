import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../components/material_button.dart';
import '../constants/text_const.dart';
import '../responsive/responsive_wrapper.dart';
import '../textstyles.dart';
import 'home_controller.dart';

class IntroView extends GetView<HomeController> {
  final double screenWidth;
      IntroView({Key? key ,required this.screenWidth}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return     SingleChildScrollView(
      child: Column(
        
        
             crossAxisAlignment: CrossAxisAlignment.center,
             mainAxisAlignment: MainAxisAlignment.center,
             
              
           
              children: [
            
        
             SizeTransition(
               
                 sizeFactor: controller.animation,
              axis: Axis.vertical,
              axisAlignment: -1,
               child:  const HomeContents()),
            const SizedBox(height: 20,),

            //add home buttons
                   HomeButtons(screenWidth: screenWidth,),
              ],
            ),
    );



  }

 

}
class HomeContents extends StatelessWidget {
   const HomeContents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth=Get.width;

    return ResponsiveWidget(

      largeScreen:
      
      
      Container(
        margin: EdgeInsets.only(left: screenWidth*0.1),
        child: Column(
         
         crossAxisAlignment: CrossAxisAlignment.start,
         mainAxisAlignment: MainAxisAlignment.center,
          
     
          children: [
        
         
            RichText(
              text: TextSpan(
            text: "I'M ",
            style: TextStyles.heading4?.copyWith(fontWeight: FontWeight.normal),
            children: <TextSpan>[
              TextSpan(
                  text: "${myName.toUpperCase()} ",
                  style: TextStyles.heading4?.copyWith(fontWeight: FontWeight.bold)),
            ],
              ),
            ),
          Padding(
            padding: const EdgeInsets.only(top:8.0,bottom: 10),
            child: Text(designation.toUpperCase(),style: TextStyles.headingTextStyle),
          ),
            SizedBox(
              width: screenWidth*0.4,
              child: Text(
                homeDesctiption,
                style: TextStyles.subtitle1?.copyWith(color: Colors.white),
                textAlign:
                
              
                 TextAlign.start,
              ),
            ),

            const SizedBox(height: 20,),
          ],
        ),
      ),
       
      smallScreen: Column(children: [
    
    
    
            RichText(
              text: TextSpan(
            text: "I'M ",
            style: TextStyles.heading4?.copyWith(fontWeight: FontWeight.bold),
            children: <TextSpan>[
              TextSpan(
                  text: "${myName.toUpperCase()} ",
                  style: TextStyles.heading4
                      ?.copyWith(fontWeight: FontWeight.bold)),
            ],
              ),
            ),
          Padding(
            padding: const EdgeInsets.only(top:8.0,bottom: 10),
            child: Text(designation.toUpperCase(),style: TextStyles.heading6?.copyWith(color: Colors.red),),
          ),
          const SizedBox(height: 20,),
    
    
          SizedBox(
            
            child: Text(
              homeDesctiption,
              style: TextStyles.subtitle1?.copyWith(color: Colors.white),
              textAlign:
              
            
               TextAlign.center,
            ),
          ),
       ],),
    );
 
 
 
  }
}

class HomeButtons extends StatelessWidget {
  final double screenWidth;
  const  HomeButtons({
    Key? key,
    required this.screenWidth
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth=Get.width;
    return ResponsiveWidget(

      largeScreen: 
      
      
         Container(
           margin:  EdgeInsets.only(left: screenWidth*0.1),
           child: Row(
              
                 children: [
            
                    SizedBox(
                     width: 200,
                     height: 50,
                     child:MaterialButtonWidget(
                       borderColor: Colors.red,
                       color: Colors.redAccent.shade400,
                       hoverColor: Colors.black,
                       
                       
                       child: Text(hireMe.capitalizeFirst!,style: const TextStyle(color: Colors.white),),onPressed: (){},)
                    ),
        const SizedBox(width: 10,),

                       SizedBox(
                         width: 200,
                         height: 50,
                         child:MaterialButtonWidget(
                           
                           
                           borderColor: Colors.white,
                           color: Colors.black,
                           hoverColor: Colors.black45,
                           child:SizedBox(
        
                           width: 100,
                           child: Row(
                             
                             mainAxisAlignment: MainAxisAlignment.start,
                             children:  [
                         
                         const FaIcon(FontAwesomeIcons.solidFilePdf,color: Colors.white,),
        
                         const SizedBox(width: 10,),
                         
                         Text(resume.capitalizeFirst!,style: const TextStyle(color: Colors.white),),
                         
                         
                         
                           ]),
                         ),onPressed: (){},)
                       ),
                 ],
               ),
         ),
      
      smallScreen: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
            
        children: [
          
          
           SizedBox(
            width: 200,
            height: 50,
            child:MaterialButtonWidget(
              borderColor: Colors.red,
              color: Colors.redAccent.shade400,
              hoverColor: Colors.black,
              
              
              child: Text(hireMe.capitalizeFirst!,style: const TextStyle(color: Colors.white),),onPressed: (){},)
           ),
        const SizedBox(height: 20,),
    
              SizedBox(
                width: 200,
                height: 50,
                child:MaterialButtonWidget(
                  
                  
                  borderColor: Colors.white,
                  color: Colors.black,
                  hoverColor: Colors.black45,
                  child:SizedBox(
        
                  width: 100,
                  child: Row(
                    
                    mainAxisAlignment: MainAxisAlignment.start,
                    children:  [
                
                const FaIcon(FontAwesomeIcons.solidFilePdf,color: Colors.white,),
        
                const SizedBox(width: 10,),
                
                Text(resume.capitalizeFirst!,style: const TextStyle(color: Colors.white),),
                
                
                
                  ]),
                ),onPressed: (){},)
              ),
        ],
      ),
    );
  }
}
 
 
 