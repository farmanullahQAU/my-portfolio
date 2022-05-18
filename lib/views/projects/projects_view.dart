import 'package:farmanullah_portfolio/constants/constants.dart';
import 'package:farmanullah_portfolio/constants/text_const.dart';
import 'package:farmanullah_portfolio/responsive/responsive_wrapper.dart';
import 'package:farmanullah_portfolio/textstyles.dart';
import 'package:farmanullah_portfolio/views/projects/projects_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../assets_path.dart';
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
      

      drawer: 
      
      ResponsiveWidget.isSmallScreen(context)?
      const AppDrawer():null,
        key: Get.find<MenuController>().projectsViewKey,
        backgroundColor: Colors.black,
      body: Stack(
        children: [
          
          SingleChildScrollView(
            child: Column(
              children: [
                Container(

                 decoration: BoxDecoration(

color: Colors.white
  
    //                  gradient: LinearGradient(colors: [
                       
                       
    //                   Color.fromRGBO(207, 0, 15, 0.7),
                       
    //                   Color.fromARGB(228, 214, 29, 12),
    
    
                       
                       
                       
    //                    ],
    //             begin: Alignment.centerLeft,
    //             end: Alignment.centerRight,
    
    
    
    
    
    // )
    


                 ),
              
              
              
              
                  child: ResponsiveWidget(
              //grid view for mobile
                    smallScreen:Container(
                      margin: const EdgeInsets.symmetric(vertical: 60,horizontal: 10),
                      child: addGrid(2,crossAxisSpacing: 0,mainAxisSpacing: 150,crossAxisCount: 1)) ,

                      //for desktop
                    largeScreen:   addGrid(screenWidth*0.1,crossAxisSpacing: 80,mainAxisSpacing: 80,crossAxisCount: 3),

                    //for tablet
                    mediumScreen: Container(
                                    margin: const EdgeInsets.only(top: 40),
          
                      child: addGrid(screenWidth*0.1,crossAxisSpacing: 30, mainAxisSpacing: 30, crossAxisCount: 2),
                    ),
                  ),
                ),
           _addPortfolioSS(context)


              ],
            ),
          ),


     //shows drawer for mobile and menu row for tablet and desktop
          addHeader(context), 

          
              
        ],
      ),
    );
  }
  Container _addPortfolioSS(BuildContext context) {
    return Container(
                color: Colors.black,
                child: Column(
                  children: [

                    SizedBox(height: 30,),


                    Container(

                    
                      width: 200,
                      height: 150,
                      child: FlutterLogo(),),
                     FittedBox(child: Text("Flutter is Awesome",style: 
                     
                     ResponsiveWidget.isLargeScreen(context)?
                     
                     
                     TextStyles.heading2?.copyWith(color: Colors.white):
                     
                     TextStyles.heading3)),
                     

                    Align(
                      
                      alignment: Alignment.center,
                      child: Image.asset(portfolioDesktopSSpath)),
                  ],
                ),
              );
  }
  Widget addHeader(BuildContext context) {
    return 
          AnimatedSwitcher(
                                     transitionBuilder: (child,animation)=>SizeTransition(sizeFactor: animation,child: child,),
         
         duration: const Duration(milliseconds: 400),
            child:
          
            
             Header(
               
               title: projectsViewTitle,
               onTap: (){
             
               //open and close drawer for mobile view
               Get.find<MenuController>().controlProjectsMenu();
             
             
             },)
        );
  }

  Widget addGrid(double padding,{required double crossAxisSpacing, required double  mainAxisSpacing,required int crossAxisCount }) {
    return AnimationLimiter(
      child: GridView(
    
        controller: controller.scrollController,
        
        
        physics: const ScrollPhysics(),
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

    //company,fiverr or self project banner
    child: Banner(
      
      color:Colors.black,
    message: controller.projecttype(project.projectType!),
                location: BannerLocation.topEnd,
      child:   Column(
        children: [
              Expanded(
                child: Container(
                  
                  height: 150,
                  width: double.infinity,
                  decoration: BoxDecoration(


                    
      borderRadius: const BorderRadius.only(topLeft: Radius.circular(5),topRight: Radius.circular(5)),
                    
                    image: DecorationImage(
                    
                    fit: BoxFit.cover,
                    image: AssetImage(project.assetPath!))),
                  
                  ),
              ),
      
          Expanded(
            child: Container(
    
    
    decoration:  BoxDecoration(



      color: Colors.white10,
    
    
                     gradient: LinearGradient(colors: [
                       
                       
                      Colors.grey,
                       
                      Colors.white10,
    
    
                       
                       
                       
                       ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
    
    
    
    
    
    )
    
    
    ), 
    
              width: double.infinity,
              
              height: 400,child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
    
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                
Align(
  alignment: Alignment.center,
  child: Text(project.projectCategory.toString().capitalizeFirst??"".capitalizeFirst!,style: TextStyles.heading5?.copyWith(color: Colors.grey,fontWeight: FontWeight.bold),)),
                  
                const SizedBox(height: 20,),
                    Text(project.name,style: TextStyles.heading5?.copyWith(color: Colors.black)),
                    const SizedBox(height: 10,),
                   Expanded(child: Text(project.description!,style: TextStyles.subtitle1?.copyWith(color:Colors.grey),textAlign: TextAlign.start,)),


//completed or running status row
_addStatusRow(project)
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

  Widget _addStatusRow(Project project) {
    return     project.status?Center(child: Row(
      children: [
        Text("Completed",style: TextStyles.body1?.copyWith(color: Colors.black),),
        const SizedBox(width: 10,),
            const FaIcon(FontAwesomeIcons.checkCircle,color: Colors.red,),
      ],
    )):Row(
      
      children: [
        
        Text("Running",style: TextStyles.body1?.copyWith(color: Colors.black),),
        const SizedBox(width: 10,),
        for(int i=0;i<3;i++)
        const Icon(Icons.circle_sharp,color: Colors.green,),],);
  }
}