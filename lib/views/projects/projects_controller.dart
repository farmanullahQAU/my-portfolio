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
  projectType: ProjectTypes.company,
  name: "Expense manager",
  
  assetPath: "images/verbit.jpg",description: fypDescription),
Project(
  name: "Verbit",
  projectType: ProjectTypes.fiverr,
  
  assetPath: "images/verbit.jpg",description: "Each year workers’ compensation entitlements are indexed in accordance withQueensland Ordinary Time Earnings (QOTE) to ensure the relative value of entitlementsover time.Unde"),



Project(
  name: "Self",
  projectType: ProjectTypes.company,
  
  assetPath: "images/verbit.jpg",description: "Each year workers’ compensation entitlements are indexed in accordance withQueensland Ordinary Time Earnings (QOTE) to ensure the relative value of entitlementsover time.Under section 10A"),


Project(
  name: "Freeco",
  projectType: ProjectTypes.company,
  
  assetPath: "images/verbit.jpg",description: "Each year workers’ compensation entitlements are indexed in accordance withQueensland Ordinary Time Earnings (QOTE) to ensure the relative value of entitlementsover time.Under section 10A"),

Project(
  name: "Parametric",
  
  projectType: ProjectTypes.company,
  
  assetPath: "images/verbit.jpg",description: "Each year workers’ compensation entitlements are indexed in accordance withQueensland Ordinary Time Earnings (QOTE) to ensure the relative value of entitlementsover time.Under section 10A"),

Project(
  name: "Lisu",
  
  projectType: ProjectTypes.company,
  
  assetPath: "images/verbit.jpg",description: "Each year workers’ compensation entitlements are indexed in accordance withQueensland Ordinary Time Earnings (QOTE) to ensure the relative value of entitlementsover time.Under section 10A"),



  ];

  List<Project> get myProjects => _myProjects;


  Query<Map<String, dynamic>> fetchProjectQuery() {
    return FirebaseFirestore.instance.collection("projects");
  }

  final _visible = 0.0.obs;
  double get visible => _visible.value;

  getVisibility() async {
    _visible.value = 0.0;
    await Future.delayed(const Duration(milliseconds: 200));
    _visible.value = 1.0;
  }

  String projecttype(ProjectTypes type){

      switch(type) {
     case ProjectTypes.company:return "Company";
     case ProjectTypes.personal:return "Personal";
     
  
        case ProjectTypes.fiverr:return "Fiverr";
  }
  }
}
