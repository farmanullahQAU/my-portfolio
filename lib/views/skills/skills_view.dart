
import 'package:farmanullah_portfolio/models/skill_model.dart';
import 'package:farmanullah_portfolio/responsive/responsive_wrapper.dart';
import 'package:farmanullah_portfolio/views/skills/skills_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:carousel_slider/carousel_slider.dart';

class SkillsView extends GetView<SkillViewController> {
  const SkillsView({Key? key}) : super(key: key);





  @override
  Widget build(BuildContext context) {
    final screenWidth=context.width;

    return ResponsiveWidget(largeScreen: _addSkillsGridView(screenWidth,10,10,3));
 
  }

  GridView _addSkillsGridView(double screenWidth,double mainAxisSpacing,double crossAxisSpacing,int crossAxisCount) {
    return GridView(
      padding: EdgeInsets.only(left: screenWidth*0.1,right: screenWidth*0.1),
      physics:NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: controller.skills.map((_addSkillCard)).toList(),
      
      gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: mainAxisSpacing,
    
          crossAxisSpacing: crossAxisSpacing,
          crossAxisCount: crossAxisCount));
  }

Widget _addSkillCard(Skill skill){

return Container(
  color: Colors.white,
  
  child: Column(
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
  CircleAvatar(
    
    radius: 60,
    backgroundImage: 
  
  skill.iconUrl!=null?
  
  AssetImage(skill.iconUrl!):null),
        Text(skill.skillName),
  ],
),);
}
}
