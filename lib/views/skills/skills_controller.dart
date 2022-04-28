import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

import '../../models/skill_model.dart';

class SkillViewController extends GetxController with GetTickerProviderStateMixin{

late final List<Skill> _skills;
  
List<Skill> get skills=>_skills;
   PageController _pageController = PageController(initialPage: 0, keepPage: true, viewportFraction: 0.8);
   PageController get pageController=>_pageController;
  var currentPageValue = 0.0;
  double totalCards = 10;
@override
  void onInit() {
    
    super.onInit();
    intiSkills();
     pageController.addListener(() {
        currentPageValue = pageController.page!;
      });
  }

  void intiSkills() {

_skills=[
Skill(skillName: "Flutter", description: "Flutter is SDK for cross plateform app development"),
Skill(skillName: "GetX", description: "GetX is development"),
Skill(skillName: "Firebase", description: "Firebase is  is a....."),
Skill(skillName: "Firebase", description: "Firebase is  is a....."),
Skill(skillName: "Firebase", description: "Firebase is  is a....."),
Skill(skillName: "Firebase", description: "Firebase is  is a.....")




];
    
  }

}
