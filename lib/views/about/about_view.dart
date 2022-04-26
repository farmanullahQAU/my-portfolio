import 'package:farmanullah_portfolio/textstyles.dart';
import 'package:farmanullah_portfolio/views/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../constants/text_const.dart';
import '../../responsive/responsive_wrapper.dart';

class About extends GetView<HomeController> {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth=Get.width;
    return ResponsiveWidget(
      largeScreen:


      Container(
color: Colors.white,

    child: Column(

      children: [



     Container(


decoration: BoxDecoration(

    gradient: LinearGradient(
        tileMode: TileMode.clamp,

        colors: [
          Colors.red,
          Color.fromARGB(228, 214, 29, 1),

          Color.fromRGBO(207, 0, 15, 1),







        ],
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        stops: [
          0.1,
          0.4,
          0.6,
        ]





    )
 ,

  borderRadius: BorderRadius.only(topLeft: Radius.circular(500),bottomLeft: Radius.circular(500))),
        margin: EdgeInsets.only(left: screenWidth*0.1,top:0,bottom: 0,right: 0),


       child: Row(
         mainAxisAlignment: MainAxisAlignment.start,
         crossAxisAlignment: CrossAxisAlignment.start,




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

                Text("About me",style: TextStyles.heading3,),
                Text(aboutDescription,textAlign: TextAlign.justify,

                style: TextStyles.subtitle1?.copyWith(color: Colors.white),

                ),
              const SizedBox(height: 30,),
                 Container(width: 200,height:
                 5,color: Colors.red,),

                 _addSocilaIcon(),

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

    smallScreen:


       Container(
         decoration: const BoxDecoration(

        color: Colors.white,

          //  image: DecorationImage(


          // opacity: 0.3,
          // fit: BoxFit.cover,
          // image: AssetImage('assets/pic2.jpg'))


          ),
    child: Column(

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
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Text("About me",style: TextStyles.heading3,),
              Text(aboutDescription,textAlign: TextAlign.center,

              style: TextStyles.subtitle1?.copyWith(color: Colors.black87),

              ),
            // SizedBox(height: 30,),
            //    Container(width: 200,height:
            //    5,color: Colors.red,),

               Align(
                   alignment: Alignment.center,
                   child: _addSocilaIcon()),

            ],
          )


      ,



       ],
       ),
     ),
      ],
    ),


      ),




    );
  }



  Widget _addImageAvatar(BuildContext context){
return CircleAvatar(
backgroundColor: Colors.black,
 radius: ResponsiveWidget.isSmallScreen(context)?155:205,
  child:   CircleAvatar(
    radius:ResponsiveWidget.isSmallScreen(context)?150:200,
    
    backgroundImage: Image.asset(


    "assets/pic.jpeg",fit: BoxFit.cover,).image,
    
    
    ),
);

  }

 Widget _addSocilaIcon() {


    return Row(children: const [
    
    ButtonBar(children: [
    
    FaIcon(FontAwesomeIcons.linkedin,),
    FaIcon(FontAwesomeIcons.twitter,),
    FaIcon(FontAwesomeIcons.mailBulk,),
    FaIcon(FontAwesomeIcons.youtube,),
    
    
    ],)
    
    ],);
  }
}

 