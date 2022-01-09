import 'package:cached_network_image/cached_network_image.dart';
import 'package:farmanullah_portfolio/models/project_model.dart';
import 'package:farmanullah_portfolio/textstyles.dart';
import 'package:flutter/material.dart';
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
              // Colors.teal.shade900,
              Colors.black,
            ],
          )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                children: [
                  Text(
                    project.name!,
                    style: TextStyles.heading4,
                  ),
                  Container(
                    width: 200,
                    height: 10,
                    decoration: BoxDecoration(
                        color: Colors.white, borderRadius: borderRadius),
                  ),
                  Container(
                    width: 150,
                    height: 8,
                    decoration: BoxDecoration(
                        color: Colors.red, borderRadius: borderRadius),
                  ),
                  Container(
                    width: 75,
                    height: 6,
                    decoration: BoxDecoration(
                        color: Colors.teal, borderRadius: borderRadius),
                  ),
                ],
              ),

              Container(
                child: Text(project.description!),
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: project.screenshots!
                      .map((e) => Flexible(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CachedNetworkImage(
                                fit: BoxFit.cover,
                                imageUrl: e,
                                imageBuilder: (context, imageProvider) =>
                                    CircleAvatar(
                                  radius: 100,
                                  backgroundImage: imageProvider,
                                ),
                                placeholder: (context, url) =>
                                    CircularProgressIndicator(),
                                errorWidget: (context, url, error) =>
                                    Icon(Icons.error),
                              ),
                            ),
                          ))
                      .toList()),
              // CachedNetworkImage(
              //   width: 200,
              //   height: 100,
              //   imageUrl: project.imageUrl!,
              //   imageBuilder: (context, imageProvider) => Container(
              //     decoration: BoxDecoration(
              //       image: DecorationImage(
              //         image: imageProvider,
              //         fit: BoxFit.cover,
              //       ),
              //     ),
              //   ),
              //   placeholder: (context, url) => CircularProgressIndicator(),
              //   errorWidget: (context, url, error) => Icon(Icons.error),
              // )
            ],
          )),
    );
  }
}
