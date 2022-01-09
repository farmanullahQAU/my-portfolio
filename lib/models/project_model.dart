import 'package:cloud_firestore/cloud_firestore.dart';

class Project {
  String? ProjectId;

  String? name;
  String? imageUrl;
  String? playstoreUrl;
  String? appStoreUrl;
  String? description;
  List<String>? screenshots;
  List<String>? languages;

  Project(
      {this.ProjectId,
      this.name,
      this.playstoreUrl,
      this.appStoreUrl,
      this.imageUrl,
      this.description,
      this.screenshots,
      this.languages});

  Project.fromJson(Map<String, dynamic> json, String ProjectId) {
    this.ProjectId = ProjectId;
    this.playstoreUrl = json["playstore_url"] ?? null;
    this.appStoreUrl = json["appstore_url"] ?? null;

    description = json["description"] ?? null;

    screenshots =
        json["screenshots"] != null ? List.from(json["screenshots"]) : null;
    languages = json["languages"] != null ? List.from(json["languages"]) : null;

    name = json['name'] ?? null;
    imageUrl = json['image_url'] ?? null;
  }
}
