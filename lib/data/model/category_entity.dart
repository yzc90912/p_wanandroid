// To parse this JSON data, do
//
//     final categoryEntity = categoryEntityFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_entity.freezed.dart';
part 'category_entity.g.dart';

CategoryEntity categoryEntityFromJson(String str) =>
    CategoryEntity.fromJson(json.decode(str));

String categoryEntityToJson(CategoryEntity data) => json.encode(data.toJson());

@freezed
class CategoryEntity with _$CategoryEntity {
  const factory CategoryEntity({
    @JsonKey(name: "cid") int? cid,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "articles") List<Article>? articles,
  }) = _CategoryEntity;

  factory CategoryEntity.fromJson(Map<String, dynamic> json) =>
      _$CategoryEntityFromJson(json);
}

@freezed
class Article with _$Article {
  const factory Article({
    @JsonKey(name: "chapterId") int? chapterId,
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "link") String? link,
    @JsonKey(name: "title") String? title,
  }) = _Article;

  factory Article.fromJson(Map<String, dynamic> json) =>
      _$ArticleFromJson(json);
}
