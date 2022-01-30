import 'dart:js';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:farmanullah_portfolio/components/project_card.dart';
import 'package:farmanullah_portfolio/models/project_model.dart';
import 'package:farmanullah_portfolio/views/about/about_controller.dart';
import 'package:farmanullah_portfolio/views/projects/projects_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutterfire_ui/firestore.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../textstyles.dart';

class AboutView extends StatelessWidget {
  final _controller = Get.find<AboutController>();
  AboutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _controller.getVisibility();

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Container(
              width: double.infinity,
              child: AnimatedAlign(
                alignment: ResponsiveWrapper.of(context).isSmallerThan(TABLET)
                    ? Alignment.center
                    : Alignment.topLeft,
                duration: const Duration(seconds: 1),
                curve: Curves.fastOutSlowIn,
                child: Container(
                    child: FaIcon(
                  FontAwesomeIcons.graduationCap,
                  size: 50,
                )),
              ),
            ),
          ),

          // RichText(
          //   text: TextSpan(
          //     text: "As a Computer science graduate i am exicted to begin my career as a software enginerr ",
          //     style: TextStyles.body1
          //         ?.copyWith(fontWeight: FontWeight.bold),
          //     children: <TextSpan>[
          //       TextSpan(
          //           text: 'Farman Ullah',
          //           style: TextStyles.heading5?.copyWith(
          //               fontWeight: FontWeight.bold,
          //               color: Colors.cyan)),
          //     ],
          //   ),
          // ),

          // FittedBox(
          //   child: Text(
          //     "Projects Completed ",
          //     style: TextStyles.heading2?.copyWith(
          //         color: Colors.white, fontWeight: FontWeight.bold),
          //   ),
          // ),

          _addGraduation(),

          _addDegreeAndUniText(),
          SizedBox(
            height: 20,
          ),


          Container(
       decoration: new BoxDecoration(
         color: Colors.black,

         border: Border(
           bottom:  BorderSide(color: Colors.cyan.shade900,width: 1.0),
           top: BorderSide(color: Colors.cyan.shade900,width: 1.0,
         
         

         ),
                        //     gradient: new LinearGradient(
                        //   colors: [
                        //     Colors.blueGrey,

                        //     Colors.black,
                        //   ],
                        // )
                        
                        
       )),
            child: ResponsiveRowColumn(
              layout: ResponsiveWrapper.of(context).isLargerThan(MOBILE)
                  ? ResponsiveRowColumnType.ROW
                  : ResponsiveRowColumnType.COLUMN,

              // columnPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),

              rowCrossAxisAlignment: CrossAxisAlignment.center,

              rowMainAxisAlignment: MainAxisAlignment.spaceBetween,

              columnCrossAxisAlignment: CrossAxisAlignment.center,
              columnSpacing: 10,
              columnPadding: EdgeInsets.only(top: 20,bottom: 20),

              children: [
                ResponsiveRowColumnItem(
                  rowFlex: 2,
                  child: Lottie.asset('lottie/skills.json'),
                ),
                ResponsiveRowColumnItem(
                  rowFlex: 2,
                  child: Text("1 YEAR EXPERIENCE AT ESOLS TECHNOLOGIES ",
                      textAlign: TextAlign.center,
                      style:
                          TextStyles.heading5?.copyWith(color: Colors.cyan,fontWeight: FontWeight.bold)),
                )
              ],
            ),
          ),

      _fetchAboutString(),
_addSkills(),

     
     
        ],
      ),
    );
  }
_addSkills(){
return Container(color: Colors.black,width: double.infinity,



child: Column(
  crossAxisAlignment: ResponsiveWrapper.of(Get.context!).isSmallerThan(TABLET)?
  CrossAxisAlignment.center:CrossAxisAlignment.start
  ,
  children: [
  Text("MY SKILLS",
                      textAlign: TextAlign.center,
                      style:
                          TextStyles.heading3?.copyWith(color: Colors.cyan,fontWeight: FontWeight.bold)),
        FirestoreQueryBuilder<Map<String, dynamic>>(
    
      
    
    
    
      query: _controller.fetchSkillsQuery,
    
    
    
      builder: (context, snapshot, _) {
    
    
    
         if (snapshot.isFetching) {
    
    
    
          return const CircularProgressIndicator();
    
    
    
        }
    
    
    
        // ...
    
    
    
          if (snapshot.hasError) {
    
    
    
          return Text('Something went wrong! ${snapshot.error}');
    
    
    
        }
    
    
    
    
    
    
    
        final List<String> skills=List.from(snapshot.docs[0].data()['skills']);
    
    
    
        return GridView.builder(
    
          physics: NeverScrollableScrollPhysics(),
    
    
    
          padding: EdgeInsets.all(2),
    
    
    
           
    
    
    
           shrinkWrap: true,
    
    
    
          itemCount: skills.length,
    
    
    
          itemBuilder: (context, index) {
    
    
    
     
    
    
    
            
    
    
    
      // List<String> idList = List.castFrom(snap.data['idList'] as List ?? []);
    
    
    
    
    
    
    
          
    
    
    
    
    
    
    
            return Container(
    
    
    
              child: Chip(label:Text(skills[index],style: TextStyles.heading6)),
    
            );
    
    
    
    
    
    
    
            
    
    
    
          }, 
    
    
    
          
    
    
    
            gridDelegate:_addSilverDeligate()
    
    
    
    
    
    
    
    
    
    
        );
    
    
    
      },
    
    
    
    ),
  ],
));
  
}

SliverGridDelegateWithFixedCrossAxisCount _addSilverDeligate(){

   return SliverGridDelegateWithFixedCrossAxisCount(
    
    
    
                   crossAxisCount:ResponsiveWrapper.of(Get.context!).isSmallerThan(TABLET)?
                   4:
                   
                    7,
    
                   mainAxisSpacing: 20,
    
                   crossAxisSpacing: 20
    
    
    
    
    
    
    
                 );
}
  Widget _addGraduation() {
    return Obx(
      () => AnimatedOpacity(
        curve: Curves.easeInCirc,
        opacity: _controller.visible,
        duration: const Duration(milliseconds: 500),
        child: Container(
          width: double.infinity,
          child: FittedBox(
            child: Text("GRADUATION ",
                style: ResponsiveWrapper.of(Get.context!).isSmallerThan(TABLET)
                    ? TextStyles.heading4?.copyWith(
                        color: Colors.cyan.shade900,
                        fontWeight: FontWeight.bold)
                    : TextStyles.heading3?.copyWith(
                        color: Colors.cyan.shade900,
                        fontWeight: FontWeight.bold)),
          ),
        ),
      ),
    );
  }

  _addDegreeAndUniText() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        FittedBox(
            child: Text(
          "MSC",
          style: TextStyles.heading1,
        )),
        FittedBox(
            child: Text(
          "COMPUTER SCIENCE",
          style: TextStyles.heading2,
        )),
        FittedBox(
          child: Text("QUAID-I-AZAM UNIVERSITY ISLAMABAD ",
              style: TextStyles.heading3?.copyWith(color: Colors.white)),
        ),
      ],
    );
  }

  _fetchAboutString(){

   return FirestoreListView<Map<String, dynamic>>(
     shrinkWrap: true,
     itemBuilder: (context,snap)=>    Column(
       
       
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ResponsiveRowColumn(
                layout: ResponsiveWrapper.of(context).isSmallerThan(TABLET)
                    ? ResponsiveRowColumnType.COLUMN
                    : ResponsiveRowColumnType.ROW,
                // columnPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                rowPadding: EdgeInsets.all( 10),
                rowCrossAxisAlignment: CrossAxisAlignment.start,
                rowMainAxisAlignment: MainAxisAlignment.spaceBetween,
                columnSpacing: 10,
                // columnCrossAxisAlignment: CrossAxisAlignment.center,

                children: [
                  ResponsiveRowColumnItem(
                    rowFlex: 1,
                    child: SizedBox(
                      width: double.infinity,
                      child: Container(
            
                        margin: EdgeInsets.zero,
                        child: Column(
                          crossAxisAlignment:
                          
                          ResponsiveWrapper.of(context).isSmallerThan(TABLET)?

                           CrossAxisAlignment.center: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            //  Expanded(child: Lottie.asset("assets/lottie/completed.json",fit: BoxFit.contain)),
                          
                            Text(
                              "HI, GREETINGS",
                              style: TextStyles.heading3?.copyWith(color: Colors.cyan,fontWeight: FontWeight.bold),
                            ),
SizedBox(height: 20,),

                            Text(
                          
                              snap.data()["about_text1"],


                              style:      TextStyles.heading6?.copyWith(
                                      color: Colors.white,
                                   ),
                             
                              textAlign:ResponsiveWrapper.of(Get.context!).isSmallerThan(TABLET)?
                              
                               TextAlign.center:
                                TextAlign.start
                               
                            
                   
                            ),
                            SizedBox(height: 10,),
                               Text(
                          
                               snap.data()["about_text2"],


                              style:      TextStyles.heading6?.copyWith(
                                      color: Colors.white,
                                   ),
                             
                              textAlign:ResponsiveWrapper.of(Get.context!).isSmallerThan(TABLET)?
                              
                               TextAlign.center:
                                TextAlign.start
                               
                            
                   
                            ),
                            SizedBox(
                              height: 10,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  ResponsiveRowColumnItem(
                    rowFlex: 1,
                    child: SizedBox(
                      width: double.infinity,
                      child: Container(
                        decoration: new BoxDecoration(
                            gradient: new LinearGradient(
                          colors: [
                            Colors.black,
                            Colors.blueGrey,
                          ],
                        )),
                        margin: EdgeInsets.zero,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                       
                            FittedBox(
                              child: Text(
                                "PROJECTS COMPLETED",
                                style: TextStyles.heading3?.copyWith(color: Colors.cyan,fontWeight: FontWeight.bold)
                              ),
                            ),
SizedBox(height: 20,),

                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    FittedBox(
                                      child: Text(
                                        "${snap.data()['company_projects']} Company projects",
                                        style: TextStyles.heading6?.copyWith(
                               color: Colors.white,
                               ),
                                      ),
                                    ),
                                            FittedBox(
                                  child: Text(
                                    "${snap.data()['fiverr_projects']}",
                                    style: TextStyles.heading6?.copyWith(
                               color: Colors.white,
                               ),
                                  ),
                                ),
                                  ],
                                ),
                        
                                SizedBox(
                                  height: 10,
                                )
                      
                      ,
                            Lottie.asset(
                              "assets/lottie/projects.json",
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
     
     
     query: FirebaseFirestore.instance.collection("profile"),
  loadingBuilder: (context) => CircularProgressIndicator(),
  errorBuilder: (context, error, stackTrace) => Text(error.toString()),
  // ...
);
  }


}
