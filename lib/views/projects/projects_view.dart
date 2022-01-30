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
        
        crossAxisAlignment:
        ResponsiveWrapper.of(context).isSmallerThan(TABLET)?
        CrossAxisAlignment.center:CrossAxisAlignment.start,
        
        
      
        children: [

          Lottie.asset("lottie/projects.json",repeat: false),
              FittedBox(
                      child: Text(
                        "PROJECTS DONE",
                        style: TextStyles.heading2?.copyWith(
                            color: Colors.cyan, fontWeight: FontWeight.bold),
                      ),
                    ),
          _projectController.myProjects.isNotEmpty
              ? _addFetchedProjects()
              : _fetchProjectsAndAdd(),
        ],
      ),
    );
  }

  Widget _fetchProjectsAndAdd() {
    _projectController.myProjects.clear();
    return Container(
      child: FirestoreListView<Map<String, dynamic>>(
        physics: NeverScrollableScrollPhysics(),
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

          return ProjectCard(project: project);
        },
      ),
    );
  }

  Widget _addFetchedProjects() {
    // ignore: sized_box_for_whitespace
    return Container(
        child: ListView.builder( 
        physics: NeverScrollableScrollPhysics(),

          addAutomaticKeepAlives: false,
          
          
          shrinkWrap: true,
          itemBuilder: (_, index) =>
              ProjectCard(project: _projectController.myProjects[index]),
          itemCount: _projectController.myProjects.length));
  }
}
