
import 'package:farmanullah_portfolio/models/skill_model.dart';
import 'package:farmanullah_portfolio/responsive/responsive_wrapper.dart';
import 'package:farmanullah_portfolio/textstyles.dart';
import 'package:farmanullah_portfolio/views/skills/skills_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import 'package:carousel_slider/carousel_slider.dart';

import '../../constants/constants.dart';

class SkillsView extends GetView<SkillViewController> {
  const SkillsView({Key? key}) : super(key: key);





  @override
  Widget build(BuildContext context) {
    final screenWidth=context.width;

    return Container(

      decoration: BoxDecoration(
        
       color: Colors.white, 
        
        // image: DecorationImage(
          
        //   fit:BoxFit.cover,
        //   image: AssetImage('assets/farman.jpg'))
          
          
          ),
      
      
      child: ResponsiveWidget(
        
        mediumScreen: _addSkillsGridView(screenWidth,0,0,2) ,

              smallScreen: _addSkillsGridView(screenWidth,0,0,1) ,

        
        
        largeScreen: Padding(
          padding:  EdgeInsets.symmetric(vertical: 100.0,horizontal: screenWidth*0.1),
          child: _addSkillsGridView(screenWidth,5,5,4),
        )));
 
  }

  Widget _addSkillsGridView(double screenWidth,double mainAxisSpacing,double crossAxisSpacing,int crossAxisCount) {
    return 
    
    GridView(
      
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

    color: primaryColor.withOpacity(0.1)

  ),
  
  child: Align(
    alignment: Alignment.topCenter,
    child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
          CircleAvatar(
            radius: 105,
              backgroundColor:Colors.black,
          
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
                Text(skill.skillName.capitalizeFirst!,style: TextStyles.headingTextStyle?.copyWith(fontWeight: FontWeight.bold,color:Colors.black),),
          ],
      ),
      
      if(skill.subSkills!=null)
      ...skill.subSkills!.map((subskill) =>Column(mainAxisAlignment: MainAxisAlignment.start,

      
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      
      Stack(
      alignment: Alignment.centerLeft,
      children: [
        Padding(
                  padding: EdgeInsets.only(left: 30),
      
          child: Text(subskill.capitalizeFirst!,style: TextStyles.subtitle1?.copyWith(color: Colors.black54,fontWeight: FontWeight.bold),),
        ),
        Icon(Icons.circle_sharp,color: primaryColor,)
      ],
      )
      
      
      ],)).toList()
      
        ]
      ),
    ),
  ),);
}
}
