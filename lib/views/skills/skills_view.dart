
import 'package:farmanullah_portfolio/models/skill_model.dart';
import 'package:farmanullah_portfolio/responsive/responsive_wrapper.dart';
import 'package:farmanullah_portfolio/textstyles.dart';
import 'package:farmanullah_portfolio/views/skills/skills_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import 'package:carousel_slider/carousel_slider.dart';

class SkillsView extends GetView<SkillViewController> {
  const SkillsView({Key? key}) : super(key: key);





  @override
  Widget build(BuildContext context) {
    final screenWidth=context.width;

    return Container(
      
       color: Colors.white, 
      
      child: ResponsiveWidget(
        
        mediumScreen: Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth*0.1),
        
        child: _addSkillsGridView(screenWidth,0,0,2),
      ) ,
        
        
        largeScreen: _addSkillsGridView(screenWidth,5,5,3)));
 
  }

  GridView _addSkillsGridView(double screenWidth,double mainAxisSpacing,double crossAxisSpacing,int crossAxisCount) {
    return GridView(
      
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
// margin: EdgeInsets.only(top: 20),
  decoration: BoxDecoration(

  ),
  
  child: Align(
    alignment: Alignment.center,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(
          
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        CircleAvatar(
            backgroundColor: Colors.black,
        
          radius: 105,
          child: CircleAvatar(
            backgroundColor: Colors.white,
            
            radius: 100,
            child: 
          
          skill.iconUrl!=null?
          
          Image.asset(skill.iconUrl!,fit: BoxFit.cover,):SizedBox(
            
            width: 100,
            height: 100,
            child: FlutterLogo())),
        ),
              Text(skill.skillName,style: TextStyles.headingTextStyle,),
        ],
    ),
    
    if(skill.subSkills!=null)
    ...skill.subSkills!.map((subskill) =>Column(
    
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    
    Stack(
    alignment: Alignment.centerLeft,
    children: [
      Padding(
                padding: EdgeInsets.only(left: 30),
    
        child: Text(subskill,style: TextStyles.subtitle1?.copyWith(color: Colors.black),),
      ),
      FaIcon(FontAwesomeIcons.checkCircle,color: Colors.black,)
    ],
    )
    
    
    ],)).toList()
    
      ]
    ),
  ),);
}
}
