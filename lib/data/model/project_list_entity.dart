// To parse this JSON data, do
//
//     final projectListEntity = projectListEntityFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_list_entity.freezed.dart';
part 'project_list_entity.g.dart';

ProjectListEntity projectListEntityFromJson(String str) =>
    ProjectListEntity.fromJson(json.decode(str));

String projectListEntityToJson(ProjectListEntity data) =>
    json.encode(data.toJson());

@freezed
class ProjectListEntity with _$ProjectListEntity {
  const factory ProjectListEntity({
    @JsonKey(name: "adminAdd") bool? adminAdd,
    @JsonKey(name: "apkLink") String? apkLink,
    @JsonKey(name: "audit") int? audit,
    @JsonKey(name: "author") String? author,
    @JsonKey(name: "canEdit") bool? canEdit,
    @JsonKey(name: "chapterId") int? chapterId,
    @JsonKey(name: "chapterName") String? chapterName,
    @JsonKey(name: "collect") bool? collect,
    @JsonKey(name: "courseId") int? courseId,
    @JsonKey(name: "desc") String? desc,
    @JsonKey(name: "descMd") String? descMd,
    @JsonKey(name: "envelopePic") String? envelopePic,
    @JsonKey(name: "fresh") bool? fresh,
    @JsonKey(name: "host") String? host,
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "isAdminAdd") bool? isAdminAdd,
    @JsonKey(name: "link") String? link,
    @JsonKey(name: "niceDate") String? niceDate,
    @JsonKey(name: "niceShareDate") String? niceShareDate,
    @JsonKey(name: "origin") String? origin,
    @JsonKey(name: "prefix") String? prefix,
    @JsonKey(name: "projectLink") String? projectLink,
    @JsonKey(name: "publishTime") int? publishTime,
    @JsonKey(name: "realSuperChapterId") int? realSuperChapterId,
    @JsonKey(name: "selfVisible") int? selfVisible,
    @JsonKey(name: "shareDate") int? shareDate,
    @JsonKey(name: "shareUser") String? shareUser,
    @JsonKey(name: "superChapterId") int? superChapterId,
    @JsonKey(name: "superChapterName") String? superChapterName,
    @JsonKey(name: "tags") List<Tag>? tags,
    @JsonKey(name: "title") String? title,
    @JsonKey(name: "type") int? type,
    @JsonKey(name: "userId") int? userId,
    @JsonKey(name: "visible") int? visible,
    @JsonKey(name: "zan") int? zan,
  }) = _ProjectListEntity;

  factory ProjectListEntity.fromJson(Map<String, dynamic> json) =>
      _$ProjectListEntityFromJson(json);
}

@freezed
class Tag with _$Tag {
  const factory Tag({
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "url") String? url,
  }) = _Tag;

  factory Tag.fromJson(Map<String, dynamic> json) => _$TagFromJson(json);
}
