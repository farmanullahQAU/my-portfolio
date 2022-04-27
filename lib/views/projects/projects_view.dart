import 'package:farmanullah_portfolio/components/material_button.dart';
import 'package:farmanullah_portfolio/responsive/responsive_wrapper.dart';
import 'package:farmanullah_portfolio/textstyles.dart';
import 'package:farmanullah_portfolio/views/projects/projects_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../components/app_drawer.dart';
import '../../components/navigationbar.dart';
import '../../menue_controller.dart';
import '../../models/project_model.dart';

class ProjectView extends GetView<ProjectsViewController> {
  const ProjectView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenWidth=context.width;
    return     Scaffold(

      drawer: AppDrawer(),
        key: Get.find<MenuController>().aboutScaffoldKey,
        backgroundColor: Colors.black,
      body: Stack(
        children: [
          Container(
      color: Colors.black,
    // decoration: BoxDecoration(
    
    
    
    
    //                  gradient: LinearGradient(
    //                    tileMode: TileMode.clamp,
                     
    //                    colors: [
                     
                     
    //                   Color.fromRGBO(207, 0, 15, 1),
    // Colors.red
    // ,
                     
    //                   Color.fromARGB(228, 214, 29, 1),
    
                     
                     
                     
    //                    ],
    //               begin: Alignment.topRight,
    //               end: Alignment.bottomLeft,
    //               stops: [
    //                 0.1,
    //                 0.4,
    //                 0.6,
    //               ]
    
    
    
    
    
    // )
    
    // ),
    
            child: ResponsiveWidget(
    
              smallScreen:addGrid(0,crossAxisSpacing: 40,mainAxisSpacing: 10,crossAxisCount: 1) ,
              largeScreen:   addGrid(screenWidth*0.1,crossAxisSpacing: 80,mainAxisSpacing: 80,crossAxisCount: 3),
              mediumScreen: addGrid(screenWidth*0.1,crossAxisSpacing: 30, mainAxisSpacing: 30, crossAxisCount: 2),
            ),
          ),
     //shows drawer for mobile and menu row for tablet and desktop
          Obx(()=>
            AnimatedSwitcher(
                                       transitionBuilder: (child,animation)=>ScaleTransition(scale: animation,child: child,),
           
           duration: const Duration(milliseconds: 500),
              child:
              controller.isDown.isTrue&&ResponsiveWidget.isLargeScreen(context)?
              
               Container(
                 color: Colors.red.withOpacity(0.9),
            key: Key("coloredAppBar"),
                
                child: Header(onTap: (){
                
                  //open and close drawer for mobile view
                  Get.find<MenuController>().controlAboutMenu();
                
                
                },),
              ):Header(
                key: Key("black"),
                onTap: (){
                
                  Get.find<MenuController>().controlAboutMenu();
                
                
                },),
            ),
          ), 
              
        ],
      ),
    );
  }

  Widget addGrid(double padding,{required double crossAxisSpacing, required double  mainAxisSpacing,required int crossAxisCount }) {
    return GridView(

      controller: controller.scrollController,
      
      
      physics: ScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal:padding,vertical: padding*0.9),
        shrinkWrap: true,
        
        children: controller.myProjects.map((addImage)).toList(),
        
        gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: mainAxisSpacing,
    
          crossAxisSpacing: crossAxisSpacing,
          crossAxisCount: crossAxisCount));
  }

  Widget addImage(Project project){
return Banner(
  color: Colors.black,
message: controller.projecttype(project.projectType!),
            location: BannerLocation.topEnd,
  child:   Column(
    children: [
          Expanded(
            child: Container(
              
              
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                
  borderRadius: BorderRadius.only(topLeft: Radius.circular(5),topRight: Radius.circular(5)),
                
                image: DecorationImage(
                
                fit: BoxFit.cover,
                image: AssetImage(project.assetPath!))),
              
              ),
          ),
  
      Expanded(
        child: Container(


decoration: BoxDecoration(


//                  gradient: LinearGradient(colors: [
                   
                   
//                   Color.fromRGBO(207, 0, 15, 0.7),
                   
//                   Color.fromARGB(228, 214, 29, 12),


                   
                   
                   
//                    ],
//             begin: Alignment.centerLeft,
//             end: Alignment.centerRight,





// )
color: Colors.white


), 

          width: double.infinity,
          
          height: 300,child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            
              
            
                Text("Freeco",style: TextStyles.heading5),
                Expanded(child: Text(project.description!,style: TextStyles.subtitle1?.copyWith(color: Colors.grey),textAlign: TextAlign.start,)),
              ],
            ),
          ),),
      )
    ],
  ),
);
    
  }
}