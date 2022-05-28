import 'package:farmanullah_portfolio/assets_path.dart';
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
  status: true,
  projectCategory: "management",
  projectType: ProjectTypes.fyp,
  name: "Expense manager",
  
  assetPath: expenseManagerBannerPath,description: fypDescription),
Project(
  status: true,
  projectCategory: "education",
  name: "Verbit",
  projectType: ProjectTypes.company,
  
  assetPath: "assets/verbit.jpg",description: verbitProjectDescription),



Project(
  status: true,
  projectCategory: "editing",
  name: "Self",
  projectType: ProjectTypes.company,
  
  assetPath: selfAppBannerPath,  description: selfAppDescriptions),


  Project(
    status: true,
  projectCategory: "Property portal",
  name: "Property chowk",
  projectType: ProjectTypes.company,
  
  assetPath:propertyChowkAppBannerPath,  description: propertyChowkAppDescription),



Project(
  status: true,
  projectCategory: "store management",
  name: "Freeco",
  projectType: ProjectTypes.company,
  
  assetPath: freecoAppBannerPath,description: freecoAppDescription),

Project(
  status: false,
  projectCategory: "e-commerce",
  name: "Parametric",
  
  projectType: ProjectTypes.fiverr,
  
  assetPath:bannerParametricAppPath,description: parametricAppDescription),
  Project(
    status: false,
  projectCategory: "Coupon",
  name: "The community coupon",
  
  projectType: ProjectTypes.company,
  
  assetPath:couponWebAppBannerPath,description: couponProjectDescription),


  Project(
  status: false,
  projectCategory: "Tracker",
  name: "Baby Tracker",
  
  projectType: ProjectTypes.fiverr,
  
  assetPath: babyTrackerBannerPath),

   Project(
    status: false,
  projectCategory: "News",
  name: "Ten bro",
  
  projectType: ProjectTypes.fiverr,
  
  assetPath:tenbroAppBannerPath,description: tenbroAppDescription),

Project(
  status: true,
  projectCategory: "dictionary",
  name: "MM dictionary",
  
  projectType: ProjectTypes.fiverr,
  
  assetPath: lisuDictionaryBannerPath,description: lisuAppDescription),



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
