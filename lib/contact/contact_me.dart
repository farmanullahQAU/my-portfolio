
import 'package:farmanullah_portfolio/components/textfield.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

import '../textstyles.dart';
import 'contact_me_controller.dart';


class ContactMeView extends StatelessWidget {
  final _controller=Get.find<ContactUsController>();
   ContactMeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
              Container(
        height: 300,
        child: Obx(
                () => AnimatedOpacity(
                  curve: Curves.easeInCirc,
                  opacity: _controller.visible,
                  duration: const Duration(milliseconds: 500),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    
                      RichText(
                        text: TextSpan(
                          text: "Hi, I'm ",
                          style: TextStyles.heading5
                              ?.copyWith(fontWeight: FontWeight.bold,color: Colors.white),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Farman Ullah',
                                style: TextStyles.heading1?.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.cyan)),
                          ],
                        ),
                      ),
                      FittedBox(
                        child: Text(
                          "Projects Completed ",
                          style: TextStyles.heading2?.copyWith(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
      ),
          Container(
            width: double.infinity,
            child: Column(
              children: [






                
                Card(
                  color: Colors.black.withOpacity(0.5),
                    child: Column(
              
                  children: [
                    Container(
                      child: AddMessageFields(),
                    
                    ),
                    // ResponsiveRowColumnItem(
                    //   child: MessageCard(),
                    //   rowFlex: 1,
                    //   rowFit: FlexFit.tight,
                    // ),
                    Container(
                      child: SizedBox(
                        width: 20,
                      ),
                    ),
                    // ResponsiveRowColumnItem(
                    //   child: Image.asset(
                    //     'plan_image1.png',
                    //     fit: BoxFit.contain,
                    //     width: 700,
                    //   ),
                    //   rowFlex: 2,
                    //   //   rowFit: FlexFit.tight,
                    // ),
                  ],
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

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


class AddMessageFields extends StatelessWidget {
  final _controller=Get.find<ContactUsController>();
  AddMessageFields({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        key: Get.find<ContactUsController>().key,
        child: Column(
          children: [
            // Padding(
            //   padding: const EdgeInsets.only(top:20,bottom: 20),
            //   child: AutoSizeText("SEND YOUR MESSAGE",
            //       style: TextStyles.subtitle2?.copyWith(color: Colors.black,fontWeight: FontWeight.bold)),
            // ),
            Row(
              children: [
                Flexible(
                  child: TxtField(
                    controller: _controller.nameController,
                    hintTxt: "Name",
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Flexible(
                  child: TxtField(
                    controller: _controller.eamilController,
                    hintTxt: "Email",
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),

            Row(
              children: [
                Flexible(
                  child: TxtField(
                    controller: _controller.phoneController,
                    hintTxt: "Mobile number",
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Flexible(
                  child: TxtField(
                    controller: _controller.subjectController,
                    hintTxt: "Subject",
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            TxtField(
              controller: _controller.messageController,

              maxLines: 6,

              //  prefixIcon: Icon(Icons.lock),
              hintTxt: "Message",
            ),

            SizedBox(
              height: 20,
            ),

            Obx(
              () => Get.find<ContactUsController>().isSending == true
                  ? CircularProgressIndicator()
                  : Container(
                      height: 50,
                      width: 200,
                      child: TextButton(
                        onPressed: () async {
                          final _controller = Get.find<ContactUsController>();
                          if (_controller.key.currentState!.validate()) {
                            await Get.find<ContactUsController>().sendEmail(
                                name: _controller.nameController.text,
                                email: _controller.eamilController.text,
                                phone: _controller.phoneController.text,
                                subject: _controller.subjectController.text,
                                message: _controller.messageController.text);
                          }
                        },
                        child: Text("SEND MESSAGE")
                      ),
                    ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}