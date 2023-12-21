// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserEntityImpl _$$UserEntityImplFromJson(Map<String, dynamic> json) =>
    _$UserEntityImpl(
      id: json['id'] as int?,
      username: json['username'] as String?,
      nickname: json['nickname'] as String?,
      token: json['token'] as String?,
      icon: json['icon'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      signature: json['signature'] as String?,
      sex: json['sex'] as String?,
      birthday: json['birthday'] as String?,
    );

Map<String, dynamic> _$$UserEntityImplToJson(_$UserEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'nickname': instance.nickname,
      'token': instance.token,
      'icon': instance.icon,
      'email': instance.email,
      'password': instance.password,
      'signature': instance.signature,
      'sex': instance.sex,
      'birthday': instance.birthday,
    };
