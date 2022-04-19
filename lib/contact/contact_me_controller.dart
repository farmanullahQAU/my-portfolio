// import 'dart:convert';

// import 'package:flutter/widgets.dart';
// import 'package:get/get.dart';
// import 'package:http/http.dart' as http;

// class ContactUsController extends GetxController {
//   var _isSending = false.obs;
//   bool get isSending => _isSending.value;
//   set isSending(bool isSending) => this._isSending.value = isSending;

//   GlobalKey<FormState> _key = GlobalKey<FormState>();

//   GlobalKey<FormState> get key => _key;
//   late TextEditingController nameController;
//   late TextEditingController eamilController;
//   late TextEditingController phoneController;
//   late TextEditingController subjectController;
//   late TextEditingController messageController;

//   @override
//   void onInit() {
//     nameController = TextEditingController();
//     eamilController = TextEditingController();
//     phoneController = TextEditingController();
//     subjectController = TextEditingController();
//     messageController = TextEditingController();

//     super.onInit();
//   }

//   Future sendEmail({
//     required String name,
//     required String phone,
//     required String email,
//     required String subject,
//     required String message,
//   }) async {
//     isSending = true;
//     final serviceId = 'service_74riaze';
//     final templateId = 'template_61lpg5u';
//     final userId = 'user_UzbgBz5lpaaRaoi7mEpyQ';

//     final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');

//     final response = await http.post(url,
//         headers: {
//           'Content-Type': 'application/json',
//         },
//         body: jsonEncode(
//           {
//             'service_id': serviceId,
//             'template_id': templateId,
//             'user_id': userId,
//             'template_params': {
//               'user_name': name,
//               'phone_no': phone,
//               'user_email': email,
//               'user_subject': subject,
//               'user_message': message
//             }
//           },
//         ));

//     this.isSending = false;
//   }

//     final _visible = 0.0.obs;
//   double get visible => _visible.value;

//   getVisibility() async {
//     _visible.value = 0.0;
//     await Future.delayed(const Duration(milliseconds: 200));
//     _visible.value = 1.0;
//   }
// }