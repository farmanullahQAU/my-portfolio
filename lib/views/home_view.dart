import 'package:farmanullah_portfolio/components/app_drawer.dart';
import 'package:farmanullah_portfolio/components/navigationbar.dart';
import 'package:farmanullah_portfolio/menue_controller.dart';
import 'package:farmanullah_portfolio/views/intro_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../responsive/responsive_wrapper.dart';
import 'home_controller.dart';




class HomeView extends GetView<HomeController> {




      const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
        final screenWidth=context.width;
        final height=context.height;



    return Scaffold(

      
      drawer: AppDrawer(),
key: Get.find<MenuController>().homeScaffoldKey,
      
      
      backgroundColor:Colors.black,
      body:

Container(
     decoration: BoxDecoration(
        
        image: DecorationImage(


        
        fit: 
        
        
        BoxFit.cover,
        image: 




        ResponsiveWidget.isSmallScreen(context)?
        
        AssetImage('pic.jpeg',):
        
        
        AssetImage('pic2.jpg',))
        ),
  child:   Stack(
    alignment: Alignment.topLeft,
    children: [
  
  
  
  
  SingleChildScrollView(
    child: Container(
  color: Colors.black.withOpacity(0.6),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

       

          SizedBox(height: height*0.4,),
          IntroView(screenWidth:  screenWidth,),
          

          SizedBox(height: 300,),
          Container(

            height: height*0.2,
            color: Colors.black.withOpacity(0.4),
            )
        ],
      ),
    ),
  )
  
  ,
  
   //shows drawer for mobile and menu row for tablet and desktop
  Container(
              height: 90,

    color: Colors.black,
    child: Header(onTap: (){
    
      //open and close drawer for mobile view
        Get.find<MenuController>().controlHomeMenu();
    
    
    },),
  ),  
  
    ],
  ),
)





     /*  SingleChildScrollView(

          physics: const ScrollPhysics(),
          child: Container(
            height: Get.height,
            decoration: const BoxDecoration(
              // image: DecorationImage(
              //   image: AssetImage('assets/pic2.jpg'),
              //   fit: BoxFit.cover,
              // ),
            ),
            child: CustomScrollView(
              physics: ScrollPhysics(),
                controller: controller.scrollController,
                slivers: [

                           SliverAppBar(
                             backgroundColor: Colors.black,
                             elevation: 0.0,

                             pinned: false,
                             snap: false,
                             floating: false,
                             expandedHeight: 160.0,
                             flexibleSpace: const FlexibleSpaceBar(
                               title: Text('SliverAppBar'),
                               background: FlutterLogo(),
                             ),
                              //    backgroundColor: Colors.transparent,

                                  actions: [
                                    // Row(
                                    //   children: [
                                    //     MaterialButton(
                                    //       onPressed: (){
                                    //
                                    //
                                    //
                                    //       },
                                    //       highlightColor: Colors.white60,
                                    //       child: Column(
                                    //         children: [
                                    //
                                    //
                                    //           Text(
                                    //             'About Meee',
                                    //             style: TextStyle(
                                    //                 color: Colors.white, fontWeight: FontWeight.bold),
                                    //           ),
                                    //         ],
                                    //       ),
                                    //     ),
                                    //     MaterialButton(
                                    //       hoverColor: Colors.grey[800],
                                    //       onPressed: (){
                                    //
                                    //         Get.to(()=>Carroussel());
                                    //       },
                                    //       child: Text(
                                    //         'Experience',
                                    //         style: TextStyle(
                                    //             color: Colors.white, fontWeight: FontWeight.bold),
                                    //       ),
                                    //     ),
                                    //
                                    //     TextButton(
                                    //       onPressed: (){
                                    //         Get.to(()=>MyStatefulWidget());
                                    //
                                    //
                                    //
                                    //       },
                                    //
                                    //       child: Text(
                                    //         'Contact Me',
                                    //         style: TextStyle(
                                    //             color: Colors.white, fontWeight: FontWeight.bold),
                                    //       ),
                                    //     ),
                                    //   ],
                                    // ),
                                    SizedBox(width: MediaQuery.of(context).size.width * .15),
                                  ],
                                ),






                  ...slivers(screenWidth),
                ],
              ),
          ),

           ),
   
   
   */
   
    );
  
  
  
  }

 
 
 
  }



//   List<Widget> slivers(double screenWidth) => [
//         SliverToBoxAdapter(
//           key:controller.homeGlobalKey ,
//           child: Container(
//             height: Get.height,
// color: Colors.black,
//             child:Column(
//               children: [
//                 SizedBox(height: 20,),
//                 Row(
//                     crossAxisAlignment: CrossAxisAlignment.end,
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children:


//                     Get.find<MenuController>().getNavigationBarItems().map((e) {
//                       final index=e.index;

//                       return





//                         Obx(()=>
//                             Column(
//                               children: [


//                                   Get.find<MenuController>().currentIdex==index?

//                                 Container(
//                                     decoration: const BoxDecoration(

//                                         color: Colors.red,

//                                         shape: BoxShape.circle),

//                                     width: 8,height: 8):Container(),
//                                 const SizedBox(height: 8,),

//                                 TextButton(


//                                   style: ButtonStyle(



//                                     foregroundColor: MaterialStateProperty.resolveWith<Color>(
//                                             (Set<MaterialState> states) {
//                                           if (states.contains(MaterialState.focused)) {
//                                             return Colors.yellow;
//                                           }
//                                           if (states.contains(MaterialState.hovered)) {
//                                             return Colors.red;
//                                           }
//                                           if (states.contains(MaterialState.pressed)) {
//                                             return Colors.blue;
//                                           }
//                                           return Colors.white; // null throus error in flutter 2.2+.
//                                         }),
//                                   ),
//                                   onPressed: e.onTap,
//                                   child:


//                                   e.item!,




//                                 ),
//                               ],
//                             ),
//                         );
//                     }





//                     ).toList()



//                 ),
// SizedBox(height: 20,),
//                 IntroView(),
//               ],
//             ),
//             padding: const EdgeInsets.only(top: 30),
//             // decoration: BoxDecoration(
//             //     gradient: LinearGradient(
//             //   begin: Alignment.centerLeft,
//             //   end: Alignment.centerRight,
//             //   tileMode: TileMode.mirror,
//             //   colors: [
//             //     Colors.red,
//             //      Colors.red.withOpacity(0.9),
//             //
//             //     Colors.red.withOpacity(0.4),
//             //   ],
//             // )
//             //
//           //   ),


//           ),
//         ),
//     SliverToBoxAdapter(
//       child: Container(height: 500,color: Colors.blue,width: screenWidth,),
//     ),


//     SliverToBoxAdapter(
//       child: Container(height: 500,color: Colors.green,width: screenWidth,),
//     ),
//          SliverToBoxAdapter(
//           key: controller.aboutGlobalKey,
//           child: About()
//         ),
//     SliverToBoxAdapter(
//       child: Container(height: 500,color: Colors.blue,width: screenWidth,),
//     ),
//        SliverToBoxAdapter(child: ProjectView(screenWidth: screenWidth,)),
//     SliverToBoxAdapter(
//       child: Container(height: 500,color: Colors.red,width: screenWidth,),

//     ),
//     SliverToBoxAdapter(
//       child: Container(height: 500,color: Colors.orange,width: screenWidth,),
//     ),


      
       
      
      
//            SliverToBoxAdapter(
//           child: Container(
//             height: 500,
//         decoration: BoxDecoration(




//                  gradient: LinearGradient(
//                    tileMode: TileMode.clamp,
                   
//                    colors: [
                   
                   
//                   Color.fromRGBO(207, 0, 15, 1),
// Colors.red
// ,
                   
//                   Color.fromARGB(228, 214, 29, 1),

                   
                   
                   
//                    ],
//               begin: Alignment.topRight,
//               end: Alignment.bottomLeft,
//               stops: [
//                 0.1,
//                 0.4,
//                 0.6,
//               ]





// )

// ),

//           ),
//         ),
//            SliverToBoxAdapter(
//           key: controller.projectGlobalKey,
//           child: Projects(),
//         ),

//     SliverToBoxAdapter(child: Container(height: 700,width: screenWidth,color: Colors.red,),)
       
//       ];






 