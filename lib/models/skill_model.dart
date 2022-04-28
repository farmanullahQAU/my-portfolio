

class Skill {
  String skillName;
  String description;
  String? iconUrl;
List<String>? subSkills;

  
  Skill(
      {required this.skillName,
      
      this.iconUrl,
      this.subSkills,
      required this.description
      
      });

   
}
