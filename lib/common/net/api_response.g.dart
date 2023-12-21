// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiResponse<T> _$ApiResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    ApiResponse<T>(
      msg: json['msg'] as String?,
      code: json['code'] as int?,
      data: _$nullableGenericFromJson(json['data'], fromJsonT),
      status: json['status'] as String?,
      errorCode: json['errorCode'] as int?,
      errorMsg: json['errorMsg'] as String?,
    );

Map<String, dynamic> _$ApiResponseToJson<T>(
  ApiResponse<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'msg': instance.msg,
      'code': instance.code,
      'errorCode': instance.errorCode,
      'errorMsg': instance.errorMsg,
      'data': _$nullableGenericToJson(instance.data, toJsonT),
      'status': instance.status,
    };

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) =>
    input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) =>
    input == null ? null : toJson(input);
