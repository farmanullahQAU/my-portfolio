
import 'package:farmanullah_portfolio/assets_path.dart';
import 'package:farmanullah_portfolio/components/image_avatar.dart';
import 'package:farmanullah_portfolio/components/textfield.dart';
import 'package:farmanullah_portfolio/constants/constants.dart';
import 'package:farmanullah_portfolio/responsive/responsive_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

import '../components/app_drawer.dart';
import '../components/material_button.dart';
import '../components/navigationbar.dart';
import '../menue_controller.dart';
import '../textstyles.dart';
import 'contact_me_controller.dart';



// class MessageCard extends StatelessWidget {
//   const MessageCard({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(top: 50),
//       child: Container(
//           width: double.infinity,
//           //  height: 255,
//           child: Card(
//             color: Colors.black.withOpacity(0.9),
//             elevation: 10.0,
//             child: Column(
//               children: [
//                 SizedBox(
//                   height: 20,
//                 ),
//                 Text(
//                   "CONTACT INFORMATION",
//                   style:
//                       TextStyles.subtitle1?.copyWith(fontWeight: FontWeight.bold),
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     SizedBox(
//                       width: 20,
//                     ),
              
//                     SizedBox(
//                       width: 8,
//                     ),
//                     Flexible(
//                         child: Text(
//                       "Lorem ipsum dolor sit amet, Cras pretium, consectetur adipiscing elit.",
//                       textAlign: TextAlign.start,
//                       style: TextStyles.body2?.copyWith(color: Colors.grey),
//                     )),
//                   ],
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     SizedBox(
//                       width: 20,
//                     ),
             
//                     SizedBox(
//                       width: 8,
//                     ),
//                     Flexible(
//                         child: Text(
//                       "Lorem ipsum dolor sit amet, Cras pretium, consectetur adipiscing elit.",
//                       textAlign: TextAlign.start,
//                       style: TextStyles.body2?.copyWith(color: Colors.grey),
//                     )),
//                   ],
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     SizedBox(
//                       width: 20,
//                     ),
              
//                     SizedBox(
//                       width: 8,
//                     ),
//                     Flexible(
//                         child: Text(
//                       "Lorem ipsum dolor sit amet, Cras pretium, consectetur adipiscing elit.",
//                       textAlign: TextAlign.start,
//                       style: TextStyles.body2?.copyWith(color: Colors.grey),
//                     )),
//                   ],
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 SizedBox(
//                   height: 60,
//                 )
//               ],
//             ),
//           )),
//     );
//   }
// }


class ContactMeView extends GetView<ContactUsController> {
  ContactMeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth=context.width;
    var sizedBox = SizedBox(
                        height: 20,
                      );
    return Scaffold(
      
drawer:
      ResponsiveWidget.isSmallScreen(context)?
      const AppDrawer():null,
      key: Get.find<MenuController>().contactScaffoldKey,
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            ResponsiveWidget(
              
              largeScreen: Center(
                child: SizedBox(
                  
                  width: ResponsiveWidget.isLargeScreen(context)?screenWidth*0.6:screenWidth*0.9,
                  child: Form(
                    key: Get.find<ContactUsController>().key,
                    child: Card(
                      margin: 
                      
                      ResponsiveWidget.isSmallScreen(context)?  EdgeInsets.only(top: 60):
                      
                      EdgeInsets.only(top: 300),
                      color:Color.fromARGB(255, 114, 18, 18).withOpacity(0.7),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            // Padding(
                            //   padding: const EdgeInsets.only(top:20,bottom: 20),
                            //   child: AutoSizeText("SEND YOUR MESSAGE",
                            //       style: TextStyles.subtitle2?.copyWith(color: Colors.black,fontWeight: FontWeight.bold)),
                            // ),
                            TxtField(
                              prefixIcon:Icon(Icons.person),
                              fillColor: Colors.black,
                              controller: controller.nameController,
                              hintTxt: "Name",
                            ),
                          sizedBox,
                            TxtField(
                              prefixIcon: Icon(Icons.email),
                              fillColor:Colors.black,
                              controller: controller.eamilController,
                              hintTxt: "Email",
                            ),
                            sizedBox,
                                
                            TxtField(
                              prefixIcon: Icon(Icons.subject),
                              fillColor: Colors.black,
                        
                              controller: controller.subjectController,
                              hintTxt: "Subject",
                            ),
                            sizedBox,
                            TxtField(
                              prefixIcon: Icon(Icons.message_rounded),
                              fillColor: Colors.black,
                        
                              controller: controller.messageController,
                                
                              maxLines: 6,
                                
                              //  prefixIcon: Icon(Icons.lock),
                              hintTxt: "Message",
                            ),
                                
                          sizedBox,
                                
                            Obx(
                              () => Get.find<ContactUsController>().isSending == true
                                  ? CircularProgressIndicator()
                        
                        
                                  :
                        
                        
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
                                   
                                   mainAxisAlignment: MainAxisAlignment.center,
                                   children:  [
                               Text("send".capitalizeFirst!,style: const TextStyle(color: Colors.white),),
                               const SizedBox(width: 10,),
                        
                               
                               const Icon(Icons.send,color: Colors.white,),
                                
                               
                               
                               
                               
                                 ]),
                               ),
                               
                                    onPressed: () async {
                                          final _controller = Get.find<ContactUsController>();
                                          if (_controller.key.currentState!.validate()) {
                                            await Get.find<ContactUsController>().sendEmail(
                                                userName: _controller.nameController.text,
                                                userEmail: _controller.eamilController.text,
                                                userSubject: _controller.subjectController.text,
                                                userMessage: _controller.messageController.text);
                                          }
                                        },
                               
                               
                               )
                             ),
                                  // : Container(
                                  //     height: 50,
                                  //     width: 200,
                                  //     child: TextButton(
                                  //       onPressed: () async {
                                  //         final _controller = Get.find<ContactUsController>();
                                  //         if (_controller.key.currentState!.validate()) {
                                  //           await Get.find<ContactUsController>().sendEmail(
                                  //               userName: _controller.nameController.text,
                                  //               userEmail: _controller.eamilController.text,
                                  //               userSubject: _controller.subjectController.text,
                                  //               userMessage: _controller.messageController.text);
                                  //         }
                                  //       },
                                  //       child: Text("SEND MESSAGE")
                                  //     ),
                                  //   ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                    ),
               
               
               
               
                  ),
                ),
              ),
            ),
            addHeader(context),
      
          
          ],
        ),
      ),
    );
  }

    Widget addHeader(BuildContext context) {
    return 
          AnimatedSwitcher(
                                     transitionBuilder: (child,animation)=>SizeTransition(sizeFactor: animation,child: child,),
         
         duration: const Duration(milliseconds: 500),
            child:
            ResponsiveWidget.isSmallScreen(context)?
            
             Container(
          key: Key("sss"),
              
              child: Header(onTap: (){
              
                //open and close drawer for mobile view
                Get.find<MenuController>().controlContactMenu();
              
              
              },),
            ):Header(
              key: Key("ttt"),
              onTap: (){
              
                Get.find<MenuController>().controlContactMenu();
              
              
              },),
          
        );
  }
}