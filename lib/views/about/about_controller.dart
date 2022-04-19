// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:get/get.dart';
// import 'package:responsive_framework/responsive_wrapper.dart';

// class AboutController extends GetxController{

//  final _visible = 0.0.obs;
//   double get visible => _visible.value;

//   getVisibility() async {
//     _visible.value = 0.0;
//     await Future.delayed(const Duration(milliseconds: 200));
//     _visible.value = 1.0;
//   }
//   CollectionReference<Map<String, dynamic>> get fetchProfileDataQuery=> FirebaseFirestore.instance.collection("profile");
//     CollectionReference<Map<String, dynamic>> get fetchSkillsQuery=> FirebaseFirestore.instance.collection("skills");
// }