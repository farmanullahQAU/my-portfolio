import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:farmanullah_portfolio/constants/constants.dart';
import 'package:farmanullah_portfolio/models/project_model.dart';
import 'package:get/get.dart';

class ProjectsViewController extends GetxController {
  final List<Project> _myProjects = [


Project(
  projectType: ProjectTypes.company,
  
  
  assetPath: "assets/verbit.jpg",description: "Each year workers’ compensation entitlements are indexed in  withQueensland Ordinary Time Earnings (QOTE) to ensure the relative value of entitlementsover time.Unde"),
Project(
  
  projectType: ProjectTypes.fiverr,
  
  assetPath: "assets/verbit.jpg",description: "Each year workers’ compensation entitlements are indexed in accordance withQueensland Ordinary Time Earnings (QOTE) to ensure the relative value of entitlementsover time.Unde"),



Project(
  
  projectType: ProjectTypes.company,
  
  assetPath: "assets/verbit.jpg",description: "Each year workers’ compensation entitlements are indexed in accordance withQueensland Ordinary Time Earnings (QOTE) to ensure the relative value of entitlementsover time.Under section 10A"),


Project(
  
  projectType: ProjectTypes.company,
  
  assetPath: "assets/verbit.jpg",description: "Each year workers’ compensation entitlements are indexed in accordance withQueensland Ordinary Time Earnings (QOTE) to ensure the relative value of entitlementsover time.Under section 10A"),

Project(
  
  projectType: ProjectTypes.company,
  
  assetPath: "assets/verbit.jpg",description: "Each year workers’ compensation entitlements are indexed in accordance withQueensland Ordinary Time Earnings (QOTE) to ensure the relative value of entitlementsover time.Under section 10A"),

Project(
  
  projectType: ProjectTypes.company,
  
  assetPath: "assets/verbit.jpg",description: "Each year workers’ compensation entitlements are indexed in accordance withQueensland Ordinary Time Earnings (QOTE) to ensure the relative value of entitlementsover time.Under section 10A"),



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
