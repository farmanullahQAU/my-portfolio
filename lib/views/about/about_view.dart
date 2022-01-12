import 'package:farmanullah_portfolio/components/project_card.dart';
import 'package:farmanullah_portfolio/models/project_model.dart';
import 'package:farmanullah_portfolio/views/projects/projects_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutterfire_ui/firestore.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../textstyles.dart';

class AboutView extends StatelessWidget {
  final _projectController = Get.find<ProjectsViewController>();
  AboutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<ProjectsViewController>().getVisibility();

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
      Container(
        height: 400,
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
                      
                        RichText(
                          text: TextSpan(
                            text: "Hi, I'm ",
                            style: TextStyles.heading5
                                ?.copyWith(fontWeight: FontWeight.bold),
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'Farman Ullah',
                                  style: TextStyles.heading5?.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.cyan)),
                            ],
                          ),
                        ),
                        FittedBox(
                          child: Text(
                            "Projects Completed ",
                            style: TextStyles.heading2?.copyWith(
                                color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
      ),
          
  
        ],
      ),
    );
  }







}
