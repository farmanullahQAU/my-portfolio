import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:farmanullah_portfolio/models/project_model.dart';
import 'package:get/get.dart';

class ProjectsViewController extends GetxController {
  final List<Project> _myProjects = [];

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
}
