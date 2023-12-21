// To parse this JSON data, do
//
//     final systemEntity = systemEntityFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'system_entity.freezed.dart';
part 'system_entity.g.dart';

SystemEntity systemEntityFromJson(String str) =>
    SystemEntity.fromJson(json.decode(str));

String systemEntityToJson(SystemEntity data) => json.encode(data.toJson());

@freezed
class SystemEntity with _$SystemEntity {
  const factory SystemEntity({
    @JsonKey(name: "articleList") List<dynamic>? articleList,
    @JsonKey(name: "author") String? author,
    @JsonKey(name: "children") List<SystemEntity>? children,
    @JsonKey(name: "courseId") int? courseId,
    @JsonKey(name: "cover") String? cover,
    @JsonKey(name: "desc") String? desc,
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "lisense") String? lisense,
    @JsonKey(name: "lisenseLink") String? lisenseLink,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "order") int? order,
    @JsonKey(name: "parentChapterId") int? parentChapterId,
    @JsonKey(name: "type") int? type,
    @JsonKey(name: "userControlSetTop") bool? userControlSetTop,
    @JsonKey(name: "visible") int? visible,
  }) = _SystemEntity;

  factory SystemEntity.fromJson(Map<String, dynamic> json) =>
      _$SystemEntityFromJson(json);
}
