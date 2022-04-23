
import 'package:farmanullah_portfolio/constants/constants.dart';

class Project {
  String? assetPath;
  String? projectId;
  ProjectTypes? projectType;

  String? name;
  
  String? imageUrl;
  String? playstoreUrl;
  String? appStoreUrl;
  String? description;
  List<String>? screenshots;
  List<String>? languages;

  Project(
      {this.projectId,
      required this.projectType,
      this.assetPath,
      this.name,
      this.playstoreUrl,
      this.appStoreUrl,
      this.imageUrl,
      this.description,
      this.screenshots,
      this.languages});

  Project.fromJson(Map<String, dynamic> json, String id) {
    projectId = id;
    projectType:json["projectType"];
    playstoreUrl = json["playstore_url"];
    appStoreUrl = json["appstore_url"];

    description = json["description"];
    assetPath = json["asset_path"];

    screenshots =
        json["screenshots"] != null ? List.from(json["screenshots"]) : null;
    languages = json["languages"] != null ? List.from(json["languages"]) : null;

    name = json['name'];
    imageUrl = json['image_url'];
  }
}
