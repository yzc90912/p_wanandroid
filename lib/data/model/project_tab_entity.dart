// To parse this JSON data, do
//
//     final projectTabEntity = projectTabEntityFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_tab_entity.freezed.dart';
part 'project_tab_entity.g.dart';

ProjectTabEntity projectTabEntityFromJson(String str) =>
    ProjectTabEntity.fromJson(json.decode(str));

String projectTabEntityToJson(ProjectTabEntity data) =>
    json.encode(data.toJson());

@freezed
class ProjectTabEntity with _$ProjectTabEntity {
  const factory ProjectTabEntity({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "name") String? name,
  }) = _ProjectTabEntity;

  factory ProjectTabEntity.fromJson(Map<String, dynamic> json) =>
      _$ProjectTabEntityFromJson(json);
}
