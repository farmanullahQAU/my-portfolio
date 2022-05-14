

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pdf_render/pdf_render_widgets.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants/text_const.dart';
import '../menue_controller.dart';
import '../route_names.dart';


class HomeController extends   GetxController with GetTickerProviderStateMixin {

late final PdfViewerController pdfController;

  AnimationController get animationController=>_controller;
 late final AnimationController _controller = AnimationController(
    value: 0.1,
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<double> animation = CurvedAnimation(
    parent: _controller,
     curve: Curves.fastOutSlowIn,
  );

  @override
 onInit() async {
pdfController= PdfViewerController(
  );
     initHomeContentsAnimation();
     


  }

  void initHomeContentsAnimation() {
    _controller.addStatusListener((AnimationStatus status) {
      if (status == AnimationStatus.completed) {
        _controller.dispose();
      } else if (status == AnimationStatus.dismissed) {
        _controller.dispose();
      }
    });
    _controller.forward();
  }



  navigateToContactView() async {

      await  Get.find<MenuController>().savCurrentIndex(RouteNames.CONTACT, 3);

          Get.offNamed(RouteNames.CONTACT);
     Get.find<MenuController>().     currentIdex = 3;
  }

  openResume()async{

     if (await canLaunch(cvUrl)) {
                await launch(cvUrl, forceWebView: true);
              } else {
                Get.defaultDialog(title: "Error",middleText: "There is an issue with the file ");
                throw 'Could not launch';
              }
                  
  }
  // void initAboutContentsAnimation() {
  //   aboutAnimationController.addStatusListener((AnimationStatus status) {
  //     if (status == AnimationStatus.completed) {
  //       aboutAnimationController.dispose();
  //     } else if (status == AnimationStatus.dismissed) {
  //       aboutAnimationController.dispose();
  //     }
  //   });
  //   aboutAnimationController.forward();
  // }
    RxBool isHover=false.obs;
/*
  Future<Uint8List> getCvUrl() async {

    DocumentSnapshot<Map<String, dynamic>> documentSnapshot=  await FirebaseFirestore.instance.collection("profile").doc("cv").get();
 
 
 return await InternetFile.get(documentSnapshot.data()!['cvUrl'],
 
     headers: {
  "Access-Control-Allow-Origin": "*", // Required for CORS support to work
  "Access-Control-Allow-Headers": "Origin,Content-Type,X-Requested-With",
  "Access-Control-Allow-Methods": "GET"
     }
 
 
 );
 
  }
  */



//   void listner() {


    
// _scrollStream.sink.add(scrollController.offset>400);

//      if (_scrollController.offset >= _scrollController.position.maxScrollExtent &&
//         !_scrollController.position.outOfRange) {

   
//     }
//     if (_scrollController.offset <= _scrollController.position.minScrollExtent &&
//         !_scrollController.position.outOfRange) {

//     }
//   }

  // void scrollToTop() {
  //   Scrollable.ensureVisible(
  //     homeGlobalKey.currentContext!,
  //     duration: const Duration(seconds: 1),
  //   );
  // }

  
}
