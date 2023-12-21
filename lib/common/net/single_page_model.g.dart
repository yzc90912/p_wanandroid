// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_page_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SinglePageModel<T> _$SinglePageModelFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    SinglePageModel<T>(
      totalPage: json['totalPage'] as int?,
      currentPage: json['currentPage'] as int?,
      total: json['total'] as int?,
      code: json['code'] as int?,
      msg: json['msg'] as String?,
      data: (json['data'] as List<dynamic>?)?.map(fromJsonT).toList(),
    );

Map<String, dynamic> _$SinglePageModelToJson<T>(
  SinglePageModel<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'totalPage': instance.totalPage,
      'total': instance.total,
      'currentPage': instance.currentPage,
      'msg': instance.msg,
      'code': instance.code,
      'data': instance.data?.map(toJsonT).toList(),
    };
