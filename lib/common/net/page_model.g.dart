// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PageModel<T> _$PageModelFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    PageModel<T>(
      pageCount: json['pageCount'] as int?,
      size: json['size'] as int?,
      total: json['total'] as int?,
      code: json['code'] as int?,
      offset: json['offset'] as int?,
      curPage: json['curPage'] as int?,
      over: json['over'] as bool?,
      data: (json['data'] as List<dynamic>?)?.map(fromJsonT).toList(),
      datas: (json['datas'] as List<dynamic>?)?.map(fromJsonT).toList(),
    );

Map<String, dynamic> _$PageModelToJson<T>(
  PageModel<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'pageCount': instance.pageCount,
      'total': instance.total,
      'size': instance.size,
      'offset': instance.offset,
      'code': instance.code,
      'curPage': instance.curPage,
      'over': instance.over,
      'datas': instance.datas?.map(toJsonT).toList(),
      'data': instance.data?.map(toJsonT).toList(),
    };
