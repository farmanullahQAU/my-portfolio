// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:farmanullah_portfolio/models/project_model.dart';
// import 'package:farmanullah_portfolio/textstyles.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:responsive_framework/responsive_framework.dart';

// class ProjectCard extends StatelessWidget {
//   BorderRadius borderRadius = const BorderRadius.only(
//       bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10));
//   final Project project;
//   ProjectCard({Key? key, required this.project}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(top:8.0),
//       child: Container(
//           width: ResponsiveWrapper.of(context).scaledWidth,
       
//           decoration: new BoxDecoration(
//               gradient: new LinearGradient(
//             colors: [
//               Colors.blueGrey.shade900,
//               Colors.black
//             ],
//           )),
//           child:  Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               // _addDividers(),
//                   Column(
//                     children: [
//                       FittedBox(
//                         child: Text(
//                           project.name!,
                          
//                           style: TextStyles.heading2,
//                         ),
//                       ),
//                           Container(
//                     width: 300,
//                     height: 6,
//                     decoration: BoxDecoration(
//                         color: Colors.white, borderRadius: borderRadius),
//                   ),

//                   SizedBox(height: 10,),
//                         Container(
                        
//                   width: ResponsiveWrapper.of(Get.context!).scaledWidth*0.9,
//                         child:Text(project.description
                  
                  
                  
//                   ??"descriptioin",
//                   style: TextStyles.heading4,
                  
                  
//                 textAlign: TextAlign.center,
//                   )),
//                     ],
//                   ),
//                   SizedBox(height: 20,),
//                    Row(
                           
//                            mainAxisAlignment: MainAxisAlignment.center,
//                            children: project.languages!.map((e) => Padding(
//                            padding: const EdgeInsets.all(8.0),
//                              child: Chip(
//                                backgroundColor: Colors.cyan.shade900,
                               
//                                label: Text(e,style: TextStyles.body1?.copyWith(color: Colors.white,))),
//                            )).toList(),),
//                   SizedBox(height: 10,),
                  
          
          
//             ],
//           ),
//           height: 400,
//       ),
//     );
//   }
//   _addImageCard(Project project ){
//    return Column(
//      crossAxisAlignment: CrossAxisAlignment.center,
//      children: [
//        Container(
   
   
         
//                     width:
                    
//                     ResponsiveWrapper.of(Get.context!).isSmallerThan(TABLET)?
//                      ResponsiveWrapper.of(Get.context!).scaledWidth*0.95:
//                      ResponsiveWrapper.of(Get.context!).scaledWidth*0.4,
//                     child: Card(
//               semanticContainer: true,
//               clipBehavior: Clip.antiAliasWithSaveLayer,
//               child: Image.asset(
                
//                 project.assetPath!,
//                 fit: BoxFit.cover,
//               ),
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(10.0),
//               ),
//               elevation: 5,
//               margin: EdgeInsets.all(10),
              
//             ),
//                   ),
//         Row(
          
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: project.languages!.map((e) => Chip(
//             backgroundColor: Colors.white,
            
//             label: Text(e,style: TextStyles.body1?.copyWith(color: Colors.black,)))).toList(),)
   
//      ],
//    );

//   }
  
  
  
  
  
//   Widget _addDividers(){

//       return Column(
//         crossAxisAlignment:CrossAxisAlignment.center ,
//         mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   FittedBox(
//                     child: Text(
//                       project.name!,
                      
//                       style: TextStyles.heading2,
//                     ),
//                   ),
          
//                   SizedBox(height: 2,),
//                   Container(
//                     width: 300,
//                     height: 6,
//                     decoration: BoxDecoration(
//                         color: Colors.white, borderRadius: borderRadius),
//                   ),
//                   SizedBox(height: 2,),
      
            
      
      
             


     


          
//                 ],
//               );
//   }
// }
