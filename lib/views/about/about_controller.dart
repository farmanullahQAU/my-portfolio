import 'package:get/get.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

class AboutController extends GetxController{

 final _visible = 0.0.obs;
  double get visible => _visible.value;

  getVisibility() async {
    _visible.value = 0.0;
    await Future.delayed(const Duration(milliseconds: 200));
    _visible.value = 1.0;
  }

}