// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'system_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SystemEntityImpl _$$SystemEntityImplFromJson(Map<String, dynamic> json) =>
    _$SystemEntityImpl(
      articleList: json['articleList'] as List<dynamic>?,
      author: json['author'] as String?,
      children: (json['children'] as List<dynamic>?)
          ?.map((e) => SystemEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      courseId: json['courseId'] as int?,
      cover: json['cover'] as String?,
      desc: json['desc'] as String?,
      id: json['id'] as int?,
      lisense: json['lisense'] as String?,
      lisenseLink: json['lisenseLink'] as String?,
      name: json['name'] as String?,
      order: json['order'] as int?,
      parentChapterId: json['parentChapterId'] as int?,
      type: json['type'] as int?,
      userControlSetTop: json['userControlSetTop'] as bool?,
      visible: json['visible'] as int?,
    );

Map<String, dynamic> _$$SystemEntityImplToJson(_$SystemEntityImpl instance) =>
    <String, dynamic>{
      'articleList': instance.articleList,
      'author': instance.author,
      'children': instance.children,
      'courseId': instance.courseId,
      'cover': instance.cover,
      'desc': instance.desc,
      'id': instance.id,
      'lisense': instance.lisense,
      'lisenseLink': instance.lisenseLink,
      'name': instance.name,
      'order': instance.order,
      'parentChapterId': instance.parentChapterId,
      'type': instance.type,
      'userControlSetTop': instance.userControlSetTop,
      'visible': instance.visible,
    };
