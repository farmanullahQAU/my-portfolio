import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:farmanullah_portfolio/binder.dart';
import 'package:farmanullah_portfolio/route_names.dart';
import 'package:farmanullah_portfolio/views/about/about_view.dart';
import 'package:farmanullah_portfolio/views/home_view.dart';
import 'package:farmanullah_portfolio/views/projects/projects_view.dart';
import 'package:get/get.dart';

List<GetPage> pages = [
  GetPage(name: RouteNames.HOME, page: () => const HomeView(), binding: Binder(),
  

  transition: Transition.fadeIn),

  GetPage(name: RouteNames.ABOUT, page: () =>  About(), binding: Binder(),transition:Transition.fadeIn,
  
  
  
  ),
  GetPage(name: RouteNames.PROJECTS, page: () =>  ProjectView(), binding: Binder(),transition: Transition.fadeIn),

 
];
