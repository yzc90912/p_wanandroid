import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_detail_entity.freezed.dart';
part 'message_detail_entity.g.dart';

MessageDetailEntity messageDetailEntityFromJson(String str) =>
    MessageDetailEntity.fromJson(json.decode(str));

String messageDetailEntityToJson(MessageDetailEntity data) =>
    json.encode(data.toJson());

@freezed
class MessageDetailEntity with _$MessageDetailEntity {
  const factory MessageDetailEntity({
    @JsonKey(name: "combinedId") String? combinedId,
    @JsonKey(name: "newsContent") String? newsContent,
    @JsonKey(name: "keywords") List<String>? keywords,
    @JsonKey(name: "goods") List<dynamic>? goods,
    @JsonKey(name: "likeCount") int? likeCount,
    @JsonKey(name: "seriesId") List<dynamic>? seriesId,
    @JsonKey(name: "playUrl") String? playUrl,
    @JsonKey(name: "cover") String? cover,
    @JsonKey(name: "shareCount") int? shareCount,
    @JsonKey(name: "mcnIcon") String? mcnIcon,
    @JsonKey(name: "editorName") String? editorName,
    @JsonKey(name: "mcnTemplateId") int? mcnTemplateId,
    @JsonKey(name: "followStatus") int? followStatus,
    @JsonKey(name: "entityType") int? entityType,
    @JsonKey(name: "nickName") String? nickName,
    @JsonKey(name: "isThumbs") bool? isThumbs,
    @JsonKey(name: "commentCount") int? commentCount,
    @JsonKey(name: "pageViewStr") String? pageViewStr,
    @JsonKey(name: "shareCountStr") String? shareCountStr,
    @JsonKey(name: "subType") int? subType,
    @JsonKey(name: "newsPics") List<String>? newsPics,
    @JsonKey(name: "cmsCategoryIds") String? cmsCategoryIds,
    @JsonKey(name: "status") int? status,
    @JsonKey(name: "fileId") dynamic fileId,
    @JsonKey(name: "mcnRealName") String? mcnRealName,
    @JsonKey(name: "creationTime") DateTime? creationTime,
    @JsonKey(name: "isLike") bool? isLike,
    @JsonKey(name: "city") String? city,
    @JsonKey(name: "cmsCategoryId") String? cmsCategoryId,
    @JsonKey(name: "userAvatar") String? userAvatar,
    @JsonKey(name: "mcnPageView") String? mcnPageView,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "commentCountStr") String? commentCountStr,
    @JsonKey(name: "title") String? title,
    @JsonKey(name: "categoryName") String? categoryName,
    @JsonKey(name: "mcnFansCount") String? mcnFansCount,
    @JsonKey(name: "brandLogo") String? brandLogo,
    @JsonKey(name: "channelId") int? channelId,
    @JsonKey(name: "thumbsCounts") String? thumbsCounts,
    @JsonKey(name: "original") int? original,
    @JsonKey(name: "uVContent") String? uVContent,
    @JsonKey(name: "topics") List<dynamic>? topics,
    @JsonKey(name: "dealerId") int? dealerId,
    @JsonKey(name: "entityId") int? entityId,
    @JsonKey(name: "userName") String? userName,
    @JsonKey(name: "userId") String? userId,
    @JsonKey(name: "url") String? url,
    @JsonKey(name: "pageView") int? pageView,
    @JsonKey(name: "createTime") String? createTime,
    @JsonKey(name: "mcnId") int? mcnId,
    @JsonKey(name: "categoryId") int? categoryId,
  }) = _MessageDetailEntity;

  factory MessageDetailEntity.fromJson(Map<String, dynamic> json) =>
      _$MessageDetailEntityFromJson(json);
}
