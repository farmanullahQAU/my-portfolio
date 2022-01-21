import 'package:farmanullah_portfolio/components/project_card.dart';
import 'package:farmanullah_portfolio/models/project_model.dart';
import 'package:farmanullah_portfolio/views/projects/projects_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutterfire_ui/firestore.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../textstyles.dart';

class ProjectsView extends StatelessWidget {
  final _projectController = Get.find<ProjectsViewController>();
  ProjectsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<ProjectsViewController>().getVisibility();

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
      Container(
        height: 300,
        child: Obx(
                () => AnimatedOpacity(
                  curve: Curves.easeInCirc,
                  opacity: _projectController.visible,
                  duration: const Duration(milliseconds: 500),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      
                   
                        FittedBox(
                          child: Text(
                            "Projects Completed ",
                            style: TextStyles.heading2?.copyWith(
                                color: Colors.red, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
      ),
          
          _projectController.myProjects.isNotEmpty
              ? _addFetchedProjects()
              : _fetchProjectsAndAdd(),
        ],
      ),
    );
  }

  _fetchProjectsAndAdd() {
    _projectController.myProjects.clear();
    return Container(
      margin: EdgeInsets.only(top: 100),
      child: FirestoreListView<Map<String, dynamic>>(
          addAutomaticKeepAlives: false,

        shrinkWrap: true,
        query: _projectController.fetchProjectQuery(),
        itemBuilder: (context, snapshot) {
          //save in a list so that when user changes tabs each time firestore would not call
          //to fetch project documents
          final project = Project.fromJson(snapshot.data(), snapshot.id);

          _projectController.myProjects.add(project);
          loadingBuilder:
          (context) => LinearProgressIndicator();
          errorBuilder:
          (context, error, stackTrace) =>
              Container(width: 200, height: 40, child: Text(error.toString()));

          return Container(
            width: Get.width,
            
            height: 450,color: Colors.white,
            child: ProjectCard(project: project));
        },
      ),
    );
  }

  _addFetchedProjects() {
    // ignore: sized_box_for_whitespace
    return Container(
        child: ListView.builder( 
          addAutomaticKeepAlives: false,
          
          
          shrinkWrap: true,
          itemBuilder: (_, index) =>
              ProjectCard(project: _projectController.myProjects[index]),
          itemCount: _projectController.myProjects.length));
  }
}
