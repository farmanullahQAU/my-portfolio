import 'package:cached_network_image/cached_network_image.dart';
import 'package:farmanullah_portfolio/models/project_model.dart';
import 'package:farmanullah_portfolio/textstyles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ProjectCard extends StatelessWidget {
  BorderRadius borderRadius = BorderRadius.only(
      bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10));
  final Project project;
  ProjectCard({Key? key, required this.project}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
          width: ResponsiveWrapper.of(context).scaledWidth,
          height: 500,
          decoration: new BoxDecoration(
              gradient: new LinearGradient(
            colors: [
              Colors.blueGrey.shade900,
              Colors.black,
            ],
          )),
          child: ResponsiveRowColumn(
          layout: ResponsiveWrapper.of(context).isSmallerThan(TABLET)
              ? ResponsiveRowColumnType.COLUMN
              : ResponsiveRowColumnType.ROW,
          // columnPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          // rowCrossAxisAlignment: CrossAxisAlignment.start,
          // rowMainAxisAlignment: MainAxisAlignment.spaceBetween,
          // columnCrossAxisAlignment: CrossAxisAlignment.center,
          // rowPadding: EdgeInsets.only(left: 20),
          //  rowSpacing: 20,
          // columnSpacing: 10,
          children: [
            ResponsiveRowColumnItem(
              child: _addDividers(),
              // rowFlex: 1,
              // rowFit: FlexFit.tight,
            ),
            ResponsiveRowColumnItem(
              child:   


          _addImageCard(project)


            ),
           

          // Container(
          //   child: Text(project.description!),
          // ),

           
          // Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //     children: project.screenshots!
          //         .map((e) => Flexible(
          //               child: Padding(
          //                 padding: const EdgeInsets.all(8.0),
          //                 child: CachedNetworkImage(
          //                   fit: BoxFit.cover,
          //                   imageUrl: e,
          //                   imageBuilder: (context, imageProvider) =>
          //                       CircleAvatar(
          //                     radius: 100,
          //                     backgroundImage: imageProvider,
          //                   ),
          //                   placeholder: (context, url) =>
          //                       CircularProgressIndicator(),
          //                   errorWidget: (context, url, error) =>
          //                       Icon(Icons.error),
          //                 ),
          //               ),
          //             ))
          //         .toList()),
          
            ],
          ),
    ));
  }
  _addImageCard(Project project ){
   return Column(
     crossAxisAlignment: CrossAxisAlignment.center,
     children: [
       Container(


         
                    height:
                    
                    ResponsiveWrapper.of(Get.context!).isSmallerThan(TABLET)?
                     ResponsiveWrapper.of(Get.context!).scaledWidth*0.5:
                     300,
                    child: Card(
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Image.network(
                project.imageUrl!,
                fit: BoxFit.fill,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 5,
              margin: EdgeInsets.all(10),
              
            ),
                  ),
        Row(children: project.languages!.map((e) => Chip(label: Text(e))).toList(),)

     ],
   );

  }
  _addDividers(){

      return Flexible(
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.center ,
                  children: [
                    FittedBox(
                      child: Text(
                        project.name!,
                        
                        style: TextStyles.heading4,
                      ),
                    ),
                    Container(
                      width: 200,
                      height: 8,
                      decoration: BoxDecoration(
                          color: Colors.white, borderRadius: borderRadius),
                    ),
                    SizedBox(height: 2,),
                    Container(
                      width: 150,
                      height: 6,
                      decoration: BoxDecoration(
                          color: Colors.red, borderRadius: borderRadius),
                    ),
                    SizedBox(height: 2,),
      
                    Container(
                      width: 75,
                      height: 5,
                      decoration: BoxDecoration(
                          color: Colors.teal, borderRadius: borderRadius),
                    ),


                    Expanded(
                      flex: 2,
                      child: Container(child:Text(project.description
                      
                      
                      
                      ??"descriptioin",
                      style: TextStyles.body1,
                    
                    
                  textAlign: TextAlign.start,
                    )))
                  ],
                ),
      );
  }
}
