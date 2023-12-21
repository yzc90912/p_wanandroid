// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cubit_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CubitEntityImpl _$$CubitEntityImplFromJson(Map<String, dynamic> json) =>
    _$CubitEntityImpl(
      works: (json['works'] as List<dynamic>?)
          ?.map((e) => Work.fromJson(e as Map<String, dynamic>))
          .toList(),
      activitys: json['activitys'],
      topics: json['topics'],
      clubs: json['clubs'],
      pgcInfo: json['pgcInfo'] == null
          ? null
          : PgcInfo.fromJson(json['pgcInfo'] as Map<String, dynamic>),
      totalCount: json['totalCount'] as int?,
      users: json['users'],
    );

Map<String, dynamic> _$$CubitEntityImplToJson(_$CubitEntityImpl instance) =>
    <String, dynamic>{
      'works': instance.works,
      'activitys': instance.activitys,
      'topics': instance.topics,
      'clubs': instance.clubs,
      'pgcInfo': instance.pgcInfo,
      'totalCount': instance.totalCount,
      'users': instance.users,
    };

_$PgcInfoImpl _$$PgcInfoImplFromJson(Map<String, dynamic> json) =>
    _$PgcInfoImpl();

Map<String, dynamic> _$$PgcInfoImplToJson(_$PgcInfoImpl instance) =>
    <String, dynamic>{};

_$WorkImpl _$$WorkImplFromJson(Map<String, dynamic> json) => _$WorkImpl(
      mcnRealName: json['mcnRealName'] as String?,
      uVContentStr: json['uVContentStr'] as String?,
      adFlag: json['adFlag'] as int?,
      clubName: json['clubName'],
      description: json['description'] as String?,
      title: json['title'] as String?,
      duration: json['duration'] as String?,
      activityId: json['activityId'],
      score: (json['score'] as num?)?.toDouble(),
      checkStatus: json['checkStatus'] as int?,
      mcnIcon: json['mcnIcon'] as String?,
      adFlagShow: json['adFlagShow'] as int?,
      adsType: json['adsType'] as int?,
      worksType: json['worksType'] as int?,
      id: json['id'] as int?,
      createTimeStr: json['createTimeStr'] as String?,
      scoreName: json['scoreName'] as String?,
      adsUrl: json['adsUrl'] as String?,
      uVContent: json['uVContent'] as int?,
      avatarUrl: json['avatarUrl'] as String?,
      entityType: json['entityType'] as int?,
      nickName: json['nickName'] as String?,
      carClubId: json['carClubId'],
      userId: json['userId'] as int?,
      url: json['url'] as String?,
      coverHeight: json['coverHeight'] as int?,
      createTime: json['createTime'] as String?,
      videoCover: json['videoCover'] as String?,
      coverWidth: json['coverWidth'] as int?,
      subType: json['subType'] as int?,
      mcnId: json['mcnId'] as int?,
      isThumbs: json['isThumbs'] as int?,
      newsPics: (json['newsPics'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$WorkImplToJson(_$WorkImpl instance) =>
    <String, dynamic>{
      'mcnRealName': instance.mcnRealName,
      'uVContentStr': instance.uVContentStr,
      'adFlag': instance.adFlag,
      'clubName': instance.clubName,
      'description': instance.description,
      'title': instance.title,
      'duration': instance.duration,
      'activityId': instance.activityId,
      'score': instance.score,
      'checkStatus': instance.checkStatus,
      'mcnIcon': instance.mcnIcon,
      'adFlagShow': instance.adFlagShow,
      'adsType': instance.adsType,
      'worksType': instance.worksType,
      'id': instance.id,
      'createTimeStr': instance.createTimeStr,
      'scoreName': instance.scoreName,
      'adsUrl': instance.adsUrl,
      'uVContent': instance.uVContent,
      'avatarUrl': instance.avatarUrl,
      'entityType': instance.entityType,
      'nickName': instance.nickName,
      'carClubId': instance.carClubId,
      'userId': instance.userId,
      'url': instance.url,
      'coverHeight': instance.coverHeight,
      'createTime': instance.createTime,
      'videoCover': instance.videoCover,
      'coverWidth': instance.coverWidth,
      'subType': instance.subType,
      'mcnId': instance.mcnId,
      'isThumbs': instance.isThumbs,
      'newsPics': instance.newsPics,
    };
