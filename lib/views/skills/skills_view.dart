
import 'package:farmanullah_portfolio/views/skills/skills_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:carousel_slider/carousel_slider.dart';

class SkillsView extends GetView<SkillViewController> {
  const SkillsView({Key? key}) : super(key: key);





  @override
  Widget build(BuildContext context) {

    return CarouselSlider(
  options: CarouselOptions(
    
    pauseAutoPlayOnManualNavigate: true,
    height: 400.0,autoPlay: true,pageSnapping: false,disableCenter: true,viewportFraction: 1.0),
  items:controller.skills.map((i) {
    return Builder(
      builder: (BuildContext context) {
        return Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.symmetric(horizontal: 5.0),
          decoration: BoxDecoration(
            color: Colors.amber
          ),
          child: Text(i.skillName, style: TextStyle(fontSize: 16.0),)
        );
      },
    );
  }).toList(),
);
 
  }


}
