
import 'package:my_profile/exports.dart';

class CandidateDataDTO {
  int? id;
  String? name;
  String? avatar;
  String? email;
  String? skills;
  String? workExperience;

  CandidateDataDTO({
    this.id,
    this.name,
    this.avatar,
    this.email,
    this.skills,
    this.workExperience,
  });

  CandidateDataDTO.fromJson(Map<dynamic, dynamic> json) {
    id = json['id'];
    name = json['name'];
    avatar = json['avatar'];
    email = json['email'];
    skills = json['skills'];
    workExperience = json['work_experience'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['avatar'] = avatar;
    data['email'] = email;
    data['skills'] = skills;
    data['work_experience'] = workExperience;
    return data;
  }

  @override
  toString() => jsonEncode(toJson());
  static List<CandidateDataDTO> fromJsonArray(List<dynamic> candidates) {
    List<CandidateDataDTO> list = candidates
        .map<CandidateDataDTO>((a) => CandidateDataDTO.fromJson(a))
        .toList();
    return list;
  }
}
