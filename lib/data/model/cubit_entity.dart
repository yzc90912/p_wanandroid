// To parse this JSON data, do
//
//     final cubitEntity = cubitEntityFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'cubit_entity.freezed.dart';
part 'cubit_entity.g.dart';

CubitEntity cubitEntityFromJson(String str) =>
    CubitEntity.fromJson(json.decode(str));

String cubitEntityToJson(CubitEntity data) => json.encode(data.toJson());

@freezed
class CubitEntity with _$CubitEntity {
  const factory CubitEntity({
    @JsonKey(name: "works") List<Work>? works,
    @JsonKey(name: "activitys") dynamic activitys,
    @JsonKey(name: "topics") dynamic topics,
    @JsonKey(name: "clubs") dynamic clubs,
    @JsonKey(name: "pgcInfo") PgcInfo? pgcInfo,
    @JsonKey(name: "totalCount") int? totalCount,
    @JsonKey(name: "users") dynamic users,
  }) = _CubitEntity;

  factory CubitEntity.fromJson(Map<String, dynamic> json) =>
      _$CubitEntityFromJson(json);
}

@freezed
class PgcInfo with _$PgcInfo {
  const factory PgcInfo() = _PgcInfo;

  factory PgcInfo.fromJson(Map<String, dynamic> json) =>
      _$PgcInfoFromJson(json);
}

@freezed
class Work with _$Work {
  const factory Work({
    @JsonKey(name: "mcnRealName") String? mcnRealName,
    @JsonKey(name: "uVContentStr") String? uVContentStr,
    @JsonKey(name: "adFlag") int? adFlag,
    @JsonKey(name: "clubName") dynamic clubName,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "title") String? title,
    @JsonKey(name: "duration") String? duration,
    @JsonKey(name: "activityId") dynamic activityId,
    @JsonKey(name: "score") double? score,
    @JsonKey(name: "checkStatus") int? checkStatus,
    @JsonKey(name: "mcnIcon") String? mcnIcon,
    @JsonKey(name: "adFlagShow") int? adFlagShow,
    @JsonKey(name: "adsType") int? adsType,
    @JsonKey(name: "worksType") int? worksType,
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "createTimeStr") String? createTimeStr,
    @JsonKey(name: "scoreName") String? scoreName,
    @JsonKey(name: "adsUrl") String? adsUrl,
    @JsonKey(name: "uVContent") int? uVContent,
    @JsonKey(name: "avatarUrl") String? avatarUrl,
    @JsonKey(name: "entityType") int? entityType,
    @JsonKey(name: "nickName") String? nickName,
    @JsonKey(name: "carClubId") dynamic carClubId,
    @JsonKey(name: "userId") int? userId,
    @JsonKey(name: "url") String? url,
    @JsonKey(name: "coverHeight") int? coverHeight,
    @JsonKey(name: "createTime") String? createTime,
    @JsonKey(name: "videoCover") String? videoCover,
    @JsonKey(name: "coverWidth") int? coverWidth,
    @JsonKey(name: "subType") int? subType,
    @JsonKey(name: "mcnId") int? mcnId,
    @JsonKey(name: "isThumbs") int? isThumbs,
    @JsonKey(name: "newsPics") List<String>? newsPics,
  }) = _Work;

  factory Work.fromJson(Map<String, dynamic> json) => _$WorkFromJson(json);
}
