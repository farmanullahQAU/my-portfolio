import 'package:farmanullah_portfolio/contact/contact_me_controller.dart';
import 'package:farmanullah_portfolio/menue_controller.dart';
import 'package:farmanullah_portfolio/views/about/about_controller.dart';
import 'package:farmanullah_portfolio/views/home_controller.dart';
import 'package:farmanullah_portfolio/views/projects/projects_controller.dart';
import 'package:farmanullah_portfolio/views/skills/skills_controller.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';

class Binder extends Bindings {
  @override
  void dependencies() {
    Get.put(  MenuController());

    Get.lazyPut( ()=> HomeController());
    Get.lazyPut( ()=> ContactUsController());


    Get.lazyPut(() => ProjectsViewController());
    Get.lazyPut(() => SkillViewController());

    Get.lazyPut(() => AboutViewController());


  }
}
