// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_list_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectListEntityImpl _$$ProjectListEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$ProjectListEntityImpl(
      adminAdd: json['adminAdd'] as bool?,
      apkLink: json['apkLink'] as String?,
      audit: json['audit'] as int?,
      author: json['author'] as String?,
      canEdit: json['canEdit'] as bool?,
      chapterId: json['chapterId'] as int?,
      chapterName: json['chapterName'] as String?,
      collect: json['collect'] as bool?,
      courseId: json['courseId'] as int?,
      desc: json['desc'] as String?,
      descMd: json['descMd'] as String?,
      envelopePic: json['envelopePic'] as String?,
      fresh: json['fresh'] as bool?,
      host: json['host'] as String?,
      id: json['id'] as int?,
      isAdminAdd: json['isAdminAdd'] as bool?,
      link: json['link'] as String?,
      niceDate: json['niceDate'] as String?,
      niceShareDate: json['niceShareDate'] as String?,
      origin: json['origin'] as String?,
      prefix: json['prefix'] as String?,
      projectLink: json['projectLink'] as String?,
      publishTime: json['publishTime'] as int?,
      realSuperChapterId: json['realSuperChapterId'] as int?,
      selfVisible: json['selfVisible'] as int?,
      shareDate: json['shareDate'] as int?,
      shareUser: json['shareUser'] as String?,
      superChapterId: json['superChapterId'] as int?,
      superChapterName: json['superChapterName'] as String?,
      tags: (json['tags'] as List<dynamic>?)
          ?.map((e) => Tag.fromJson(e as Map<String, dynamic>))
          .toList(),
      title: json['title'] as String?,
      type: json['type'] as int?,
      userId: json['userId'] as int?,
      visible: json['visible'] as int?,
      zan: json['zan'] as int?,
    );

Map<String, dynamic> _$$ProjectListEntityImplToJson(
        _$ProjectListEntityImpl instance) =>
    <String, dynamic>{
      'adminAdd': instance.adminAdd,
      'apkLink': instance.apkLink,
      'audit': instance.audit,
      'author': instance.author,
      'canEdit': instance.canEdit,
      'chapterId': instance.chapterId,
      'chapterName': instance.chapterName,
      'collect': instance.collect,
      'courseId': instance.courseId,
      'desc': instance.desc,
      'descMd': instance.descMd,
      'envelopePic': instance.envelopePic,
      'fresh': instance.fresh,
      'host': instance.host,
      'id': instance.id,
      'isAdminAdd': instance.isAdminAdd,
      'link': instance.link,
      'niceDate': instance.niceDate,
      'niceShareDate': instance.niceShareDate,
      'origin': instance.origin,
      'prefix': instance.prefix,
      'projectLink': instance.projectLink,
      'publishTime': instance.publishTime,
      'realSuperChapterId': instance.realSuperChapterId,
      'selfVisible': instance.selfVisible,
      'shareDate': instance.shareDate,
      'shareUser': instance.shareUser,
      'superChapterId': instance.superChapterId,
      'superChapterName': instance.superChapterName,
      'tags': instance.tags,
      'title': instance.title,
      'type': instance.type,
      'userId': instance.userId,
      'visible': instance.visible,
      'zan': instance.zan,
    };

_$TagImpl _$$TagImplFromJson(Map<String, dynamic> json) => _$TagImpl(
      name: json['name'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$TagImplToJson(_$TagImpl instance) => <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };
