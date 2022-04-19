// import 'package:farmanullah_portfolio/components/project_card.dart';
// import 'package:farmanullah_portfolio/models/project_model.dart';
// import 'package:farmanullah_portfolio/views/projects/projects_controller.dart';
// import 'package:flutter/material.dart';
// import 'package:flutterfire_ui/firestore.dart';
// import 'package:get/get.dart';
// import 'package:lottie/lottie.dart';
// import 'package:responsive_framework/responsive_framework.dart';

// import '../../textstyles.dart';
// import 'package:carousel_slider/carousel_slider.dart';

// class ProjectsView extends StatelessWidget {
//   final _projectController = Get.find<ProjectsViewController>();
//   ProjectsView({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     Get.find<ProjectsViewController>().getVisibility();

//     return SingleChildScrollView(
//       child: Column(
        
//         crossAxisAlignment:
//         ResponsiveWrapper.of(context).isSmallerThan(TABLET)?
//         CrossAxisAlignment.center:CrossAxisAlignment.start,
        
        
      
//         children: [

//           Lottie.asset("lottie/projects.json",repeat: false),
//               FittedBox(
//                       child: Text(
//                         "PROJECTS DONE",
//                         style: TextStyles.heading2?.copyWith(
//                             color: Colors.cyan, fontWeight: FontWeight.bold),
//                       ),
//                     ),
//           _projectController.myProjects.isNotEmpty
//               ? _addFetchedProjects()
//               : _fetchProjectsAndAdd(),
//         ],
//       ),
//     );
//   }

//   Widget _fetchProjectsAndAdd() {
//     _projectController.myProjects.clear();
//     return Container(
//       child: FirestoreListView<Map<String, dynamic>>(
//         physics: NeverScrollableScrollPhysics(),
//           addAutomaticKeepAlives: false,

//         shrinkWrap: true,
//         query: _projectController.fetchProjectQuery(),
//         itemBuilder: (context, snapshot) {
//           //save in a list so that when user changes tabs each time firestore would not call
//           //to fetch project documents
//           final project = Project.fromJson(snapshot.data(), snapshot.id);

//           _projectController.myProjects.add(project);
//           loadingBuilder:
//           (context) => LinearProgressIndicator();
//           errorBuilder:
//           (context, error, stackTrace) =>
//               Container(width: 200, height: 40, child: Text(error.toString()));

//           return ProjectCard(project: project);
//         },
//       ),
//     );
//   }

//   Widget _addFetchedProjects() {
//     // ignore: sized_box_for_whitespace
//     return Container(
//         child: ListView.builder( 
//         physics: NeverScrollableScrollPhysics(),

//           addAutomaticKeepAlives: false,
          
          
//           shrinkWrap: true,
//           itemBuilder: (_, index) =>
//               ProjectCard(project: _projectController.myProjects[index]),
//           itemCount: _projectController.myProjects.length));
//   }
// }

// class Projects extends StatelessWidget {
//   final List<String> imgList = [
//   'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
//   'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
//   'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
//   'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
//   'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
//   'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
// ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Image slider demo')),
//       body: Container(
//           child: CarouselSlider(
//         options: CarouselOptions(),
//         items: imgList
//             .map((item) => Container(
//                   child: Center(
//                       child:
//                           Image.network(item, fit: BoxFit.cover, width: 1000)),
//                 ))
//             .toList(),
//       )),
//     );
//   }
// }
