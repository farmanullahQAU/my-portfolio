import 'package:farmanullah_portfolio/responsive/responsive_wrapper.dart';
import 'package:farmanullah_portfolio/textstyles.dart';
import 'package:farmanullah_portfolio/views/projects/projects_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
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

      drawer: const AppDrawer(),
        key: Get.find<MenuController>().projectsViewKey,
        backgroundColor: Colors.black,
      body: Stack(
        children: [
          Container(
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
    
              smallScreen:Container(
                margin: EdgeInsets.only(top: 60),
                child: addGrid(0,crossAxisSpacing: 40,mainAxisSpacing: 10,crossAxisCount: 1)) ,
              largeScreen:   addGrid(screenWidth*0.1,crossAxisSpacing: 80,mainAxisSpacing: 80,crossAxisCount: 3),
              mediumScreen: Container(
                              margin: EdgeInsets.only(top: 40),

                child: addGrid(screenWidth*0.1,crossAxisSpacing: 30, mainAxisSpacing: 30, crossAxisCount: 2),
              ),
            ),
          ),
     //shows drawer for mobile and menu row for tablet and desktop
          addHeader(context), 
              
        ],
      ),
    );
  }

  Widget addHeader(BuildContext context) {
    return Obx(()=>
          AnimatedSwitcher(
                                     transitionBuilder: (child,animation)=>SizeTransition(sizeFactor: animation,child: child,),
         
         duration: const Duration(milliseconds: 400),
            child:
            controller.isDown.isTrue&&!ResponsiveWidget.isSmallScreen(context)?
            
             Container(
               color: Colors.black,
          key: Key("coloredAppBar"),
              
              child: Header(onTap: (){
              
                //open and close drawer for mobile view
                Get.find<MenuController>().controlProjectsMenu();
              
              
              },),
            ):Header(
              key: Key("black"),
              onTap: (){
              
                Get.find<MenuController>().controlProjectsMenu();
              
              
              },),
          ),
        );
  }

  Widget addGrid(double padding,{required double crossAxisSpacing, required double  mainAxisSpacing,required int crossAxisCount }) {
    return AnimationLimiter(
      child: GridView(
    
        controller: controller.scrollController,
        
        
        physics: ScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal:padding,vertical: padding*0.9),
          shrinkWrap: true,
          
          children: controller.myProjects.map((project){

            int index=controller.myProjects.indexOf(project);

            return addImage(project,index,crossAxisCount);
          }).toList(),
          
          gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: mainAxisSpacing,
      
            crossAxisSpacing: crossAxisSpacing,
            crossAxisCount: crossAxisCount)),
    );
  }

  Widget addImage(Project project,int index,int crossAxisCount){
return  AnimationConfiguration.staggeredGrid(
   position: index,
              duration: const Duration(milliseconds: 600),
              columnCount: crossAxisCount,
  child:   ScaleAnimation(
    child: Banner(
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
    
    
                     gradient: LinearGradient(colors: [
                       
                       
                      Color.fromRGBO(207, 0, 15, 0.7),
                       
                      Color.fromARGB(228, 214, 29, 12),
    
    
                       
                       
                       
                       ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
    
    
    
    
    
    )
    
    
    ), 
    
              width: double.infinity,
              
              height: 300,child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
    
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                
                  
                
                    Text(project.name,style: TextStyles.heading5?.copyWith(color: Colors.white)),
                    SizedBox(height: 10,),
                    Expanded(child: Text(project.description!,style: TextStyles.subtitle1?.copyWith(color: Colors.white),textAlign: TextAlign.start,)),

                    // MaterialButtonWidget(child: FaIcon(FontAwesomeIcons.googlePlay), onPressed: (){}, borderColor: Colors.white, color: Colors.red, hoverColor: Colors.black)
                  ],
                ),
              ),),
          )
        ],
      ),
    ),
  ),
);
    
  }
}