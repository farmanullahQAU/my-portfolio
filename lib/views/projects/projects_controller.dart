import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:farmanullah_portfolio/constants/constants.dart';
import 'package:farmanullah_portfolio/constants/text_const.dart';
import 'package:farmanullah_portfolio/models/project_model.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class ProjectsViewController extends GetxController {
final isDown=false.obs;
  @override
  void onInit() {

    scrollController.addListener(() { 

      isDown.value=false;

if(scrollController.offset>60)
{//when scroll down more than 60px the set this value true to show colored appbar


isDown.value=true;

}


    });
    super.onInit();
  }
  final scrollController=ScrollController();
  final List<Project> _myProjects = [


Project(
  projectCategory: "management",
  projectType: ProjectTypes.fyp,
  name: "Expense manager",
  
  assetPath: "verbit.jpg",description: fypDescription),
Project(
  projectCategory: "education",
  name: "Verbit",
  projectType: ProjectTypes.company,
  
  assetPath: "verbit.jpg",description: verbitProjectDescription),



Project(
  projectCategory: "editing",
  name: "Self",
  projectType: ProjectTypes.company,
  
  assetPath: "verbit.jpg",  description: selfAppDescriptions),


Project(
  projectCategory: "store management",
  name: "Freeco",
  projectType: ProjectTypes.company,
  
  assetPath: "verbit.jpg",description: freecoAppDescription),

Project(
  projectCategory: "e-commerce",
  name: "Parametric",
  
  projectType: ProjectTypes.fiverr,
  
  assetPath: "verbit.jpg",description: parametricAppDescription),
  Project(
  projectCategory: "Coupon",
  name: "The community coupon",
  
  projectType: ProjectTypes.company,
  
  assetPath: "verbit.jpg",description: couponProjectDescription),

Project(
  projectCategory: "dictionary",
  name: "MM dictionary",
  
  projectType: ProjectTypes.fiverr,
  
  assetPath: "verbit.jpg",description: lisuAppDescription),



  ];

  List<Project> get myProjects => _myProjects;





 
  String projecttype(ProjectTypes type){

      switch(type) {
     case ProjectTypes.company:return "Company";
     case ProjectTypes.personal:return "Personal";
     
  
        case ProjectTypes.fiverr:return "Fiverr";
        case ProjectTypes.fyp:return "Fyp";

  }
  }
}
