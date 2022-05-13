import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ContactUsController extends GetxController {


  final scrollController=ScrollController();



  var _isSending = false.obs;
  bool get isSending => _isSending.value;
  set isSending(bool isSending) => this._isSending.value = isSending;

  GlobalKey<FormState> _key = GlobalKey<FormState>();

  GlobalKey<FormState> get key => _key;
  late TextEditingController nameController;
  late TextEditingController eamilController;
  late TextEditingController subjectController;
  late TextEditingController messageController;

  @override
  void onInit() {
    nameController = TextEditingController();
    eamilController = TextEditingController();
    subjectController = TextEditingController();
    messageController = TextEditingController();
       

    super.onInit();
  }

  Future sendEmail({
    required String userName,
    required String userEmail,
    required String userSubject,

    required String userMessage,
  }) async {
    isSending = true;
    final serviceId = 'service_o3do969';
    final templateId = 'template_yjn20ey';
    final userId = 'HbqE-eqcaROAOkNLU';

    final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');

    final response = await http.post(url,
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode(
          {
            'service_id': serviceId,
            'template_id': templateId,
            'user_id': userId,
            'template_params': {
              'user_name': userName,
              'user_subject': userSubject,
              'user_email': userEmail,
              'user_message': userMessage
            }
          },
        ));

    this.isSending = false;
  }

    final _visible = 0.0.obs;
  double get visible => _visible.value;

  getVisibility() async {
    _visible.value = 0.0;
    await Future.delayed(const Duration(milliseconds: 200));
    _visible.value = 1.0;
  }
}