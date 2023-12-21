// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cubit_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CubitEntity _$CubitEntityFromJson(Map<String, dynamic> json) {
  return _CubitEntity.fromJson(json);
}

/// @nodoc
mixin _$CubitEntity {
  @JsonKey(name: "works")
  List<Work>? get works => throw _privateConstructorUsedError;
  @JsonKey(name: "activitys")
  dynamic get activitys => throw _privateConstructorUsedError;
  @JsonKey(name: "topics")
  dynamic get topics => throw _privateConstructorUsedError;
  @JsonKey(name: "clubs")
  dynamic get clubs => throw _privateConstructorUsedError;
  @JsonKey(name: "pgcInfo")
  PgcInfo? get pgcInfo => throw _privateConstructorUsedError;
  @JsonKey(name: "totalCount")
  int? get totalCount => throw _privateConstructorUsedError;
  @JsonKey(name: "users")
  dynamic get users => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CubitEntityCopyWith<CubitEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CubitEntityCopyWith<$Res> {
  factory $CubitEntityCopyWith(
          CubitEntity value, $Res Function(CubitEntity) then) =
      _$CubitEntityCopyWithImpl<$Res, CubitEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: "works") List<Work>? works,
      @JsonKey(name: "activitys") dynamic activitys,
      @JsonKey(name: "topics") dynamic topics,
      @JsonKey(name: "clubs") dynamic clubs,
      @JsonKey(name: "pgcInfo") PgcInfo? pgcInfo,
      @JsonKey(name: "totalCount") int? totalCount,
      @JsonKey(name: "users") dynamic users});

  $PgcInfoCopyWith<$Res>? get pgcInfo;
}

/// @nodoc
class _$CubitEntityCopyWithImpl<$Res, $Val extends CubitEntity>
    implements $CubitEntityCopyWith<$Res> {
  _$CubitEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? works = freezed,
    Object? activitys = freezed,
    Object? topics = freezed,
    Object? clubs = freezed,
    Object? pgcInfo = freezed,
    Object? totalCount = freezed,
    Object? users = freezed,
  }) {
    return _then(_value.copyWith(
      works: freezed == works
          ? _value.works
          : works // ignore: cast_nullable_to_non_nullable
              as List<Work>?,
      activitys: freezed == activitys
          ? _value.activitys
          : activitys // ignore: cast_nullable_to_non_nullable
              as dynamic,
      topics: freezed == topics
          ? _value.topics
          : topics // ignore: cast_nullable_to_non_nullable
              as dynamic,
      clubs: freezed == clubs
          ? _value.clubs
          : clubs // ignore: cast_nullable_to_non_nullable
              as dynamic,
      pgcInfo: freezed == pgcInfo
          ? _value.pgcInfo
          : pgcInfo // ignore: cast_nullable_to_non_nullable
              as PgcInfo?,
      totalCount: freezed == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int?,
      users: freezed == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PgcInfoCopyWith<$Res>? get pgcInfo {
    if (_value.pgcInfo == null) {
      return null;
    }

    return $PgcInfoCopyWith<$Res>(_value.pgcInfo!, (value) {
      return _then(_value.copyWith(pgcInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CubitEntityImplCopyWith<$Res>
    implements $CubitEntityCopyWith<$Res> {
  factory _$$CubitEntityImplCopyWith(
          _$CubitEntityImpl value, $Res Function(_$CubitEntityImpl) then) =
      __$$CubitEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "works") List<Work>? works,
      @JsonKey(name: "activitys") dynamic activitys,
      @JsonKey(name: "topics") dynamic topics,
      @JsonKey(name: "clubs") dynamic clubs,
      @JsonKey(name: "pgcInfo") PgcInfo? pgcInfo,
      @JsonKey(name: "totalCount") int? totalCount,
      @JsonKey(name: "users") dynamic users});

  @override
  $PgcInfoCopyWith<$Res>? get pgcInfo;
}

/// @nodoc
class __$$CubitEntityImplCopyWithImpl<$Res>
    extends _$CubitEntityCopyWithImpl<$Res, _$CubitEntityImpl>
    implements _$$CubitEntityImplCopyWith<$Res> {
  __$$CubitEntityImplCopyWithImpl(
      _$CubitEntityImpl _value, $Res Function(_$CubitEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? works = freezed,
    Object? activitys = freezed,
    Object? topics = freezed,
    Object? clubs = freezed,
    Object? pgcInfo = freezed,
    Object? totalCount = freezed,
    Object? users = freezed,
  }) {
    return _then(_$CubitEntityImpl(
      works: freezed == works
          ? _value._works
          : works // ignore: cast_nullable_to_non_nullable
              as List<Work>?,
      activitys: freezed == activitys
          ? _value.activitys
          : activitys // ignore: cast_nullable_to_non_nullable
              as dynamic,
      topics: freezed == topics
          ? _value.topics
          : topics // ignore: cast_nullable_to_non_nullable
              as dynamic,
      clubs: freezed == clubs
          ? _value.clubs
          : clubs // ignore: cast_nullable_to_non_nullable
              as dynamic,
      pgcInfo: freezed == pgcInfo
          ? _value.pgcInfo
          : pgcInfo // ignore: cast_nullable_to_non_nullable
              as PgcInfo?,
      totalCount: freezed == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int?,
      users: freezed == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CubitEntityImpl implements _CubitEntity {
  const _$CubitEntityImpl(
      {@JsonKey(name: "works") final List<Work>? works,
      @JsonKey(name: "activitys") this.activitys,
      @JsonKey(name: "topics") this.topics,
      @JsonKey(name: "clubs") this.clubs,
      @JsonKey(name: "pgcInfo") this.pgcInfo,
      @JsonKey(name: "totalCount") this.totalCount,
      @JsonKey(name: "users") this.users})
      : _works = works;

  factory _$CubitEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$CubitEntityImplFromJson(json);

  final List<Work>? _works;
  @override
  @JsonKey(name: "works")
  List<Work>? get works {
    final value = _works;
    if (value == null) return null;
    if (_works is EqualUnmodifiableListView) return _works;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "activitys")
  final dynamic activitys;
  @override
  @JsonKey(name: "topics")
  final dynamic topics;
  @override
  @JsonKey(name: "clubs")
  final dynamic clubs;
  @override
  @JsonKey(name: "pgcInfo")
  final PgcInfo? pgcInfo;
  @override
  @JsonKey(name: "totalCount")
  final int? totalCount;
  @override
  @JsonKey(name: "users")
  final dynamic users;

  @override
  String toString() {
    return 'CubitEntity(works: $works, activitys: $activitys, topics: $topics, clubs: $clubs, pgcInfo: $pgcInfo, totalCount: $totalCount, users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CubitEntityImpl &&
            const DeepCollectionEquality().equals(other._works, _works) &&
            const DeepCollectionEquality().equals(other.activitys, activitys) &&
            const DeepCollectionEquality().equals(other.topics, topics) &&
            const DeepCollectionEquality().equals(other.clubs, clubs) &&
            (identical(other.pgcInfo, pgcInfo) || other.pgcInfo == pgcInfo) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            const DeepCollectionEquality().equals(other.users, users));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_works),
      const DeepCollectionEquality().hash(activitys),
      const DeepCollectionEquality().hash(topics),
      const DeepCollectionEquality().hash(clubs),
      pgcInfo,
      totalCount,
      const DeepCollectionEquality().hash(users));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CubitEntityImplCopyWith<_$CubitEntityImpl> get copyWith =>
      __$$CubitEntityImplCopyWithImpl<_$CubitEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CubitEntityImplToJson(
      this,
    );
  }
}

abstract class _CubitEntity implements CubitEntity {
  const factory _CubitEntity(
      {@JsonKey(name: "works") final List<Work>? works,
      @JsonKey(name: "activitys") final dynamic activitys,
      @JsonKey(name: "topics") final dynamic topics,
      @JsonKey(name: "clubs") final dynamic clubs,
      @JsonKey(name: "pgcInfo") final PgcInfo? pgcInfo,
      @JsonKey(name: "totalCount") final int? totalCount,
      @JsonKey(name: "users") final dynamic users}) = _$CubitEntityImpl;

  factory _CubitEntity.fromJson(Map<String, dynamic> json) =
      _$CubitEntityImpl.fromJson;

  @override
  @JsonKey(name: "works")
  List<Work>? get works;
  @override
  @JsonKey(name: "activitys")
  dynamic get activitys;
  @override
  @JsonKey(name: "topics")
  dynamic get topics;
  @override
  @JsonKey(name: "clubs")
  dynamic get clubs;
  @override
  @JsonKey(name: "pgcInfo")
  PgcInfo? get pgcInfo;
  @override
  @JsonKey(name: "totalCount")
  int? get totalCount;
  @override
  @JsonKey(name: "users")
  dynamic get users;
  @override
  @JsonKey(ignore: true)
  _$$CubitEntityImplCopyWith<_$CubitEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PgcInfo _$PgcInfoFromJson(Map<String, dynamic> json) {
  return _PgcInfo.fromJson(json);
}

/// @nodoc
mixin _$PgcInfo {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PgcInfoCopyWith<$Res> {
  factory $PgcInfoCopyWith(PgcInfo value, $Res Function(PgcInfo) then) =
      _$PgcInfoCopyWithImpl<$Res, PgcInfo>;
}

/// @nodoc
class _$PgcInfoCopyWithImpl<$Res, $Val extends PgcInfo>
    implements $PgcInfoCopyWith<$Res> {
  _$PgcInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PgcInfoImplCopyWith<$Res> {
  factory _$$PgcInfoImplCopyWith(
          _$PgcInfoImpl value, $Res Function(_$PgcInfoImpl) then) =
      __$$PgcInfoImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PgcInfoImplCopyWithImpl<$Res>
    extends _$PgcInfoCopyWithImpl<$Res, _$PgcInfoImpl>
    implements _$$PgcInfoImplCopyWith<$Res> {
  __$$PgcInfoImplCopyWithImpl(
      _$PgcInfoImpl _value, $Res Function(_$PgcInfoImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$PgcInfoImpl implements _PgcInfo {
  const _$PgcInfoImpl();

  factory _$PgcInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PgcInfoImplFromJson(json);

  @override
  String toString() {
    return 'PgcInfo()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PgcInfoImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$PgcInfoImplToJson(
      this,
    );
  }
}

abstract class _PgcInfo implements PgcInfo {
  const factory _PgcInfo() = _$PgcInfoImpl;

  factory _PgcInfo.fromJson(Map<String, dynamic> json) = _$PgcInfoImpl.fromJson;
}

Work _$WorkFromJson(Map<String, dynamic> json) {
  return _Work.fromJson(json);
}

/// @nodoc
mixin _$Work {
  @JsonKey(name: "mcnRealName")
  String? get mcnRealName => throw _privateConstructorUsedError;
  @JsonKey(name: "uVContentStr")
  String? get uVContentStr => throw _privateConstructorUsedError;
  @JsonKey(name: "adFlag")
  int? get adFlag => throw _privateConstructorUsedError;
  @JsonKey(name: "clubName")
  dynamic get clubName => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "duration")
  String? get duration => throw _privateConstructorUsedError;
  @JsonKey(name: "activityId")
  dynamic get activityId => throw _privateConstructorUsedError;
  @JsonKey(name: "score")
  double? get score => throw _privateConstructorUsedError;
  @JsonKey(name: "checkStatus")
  int? get checkStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "mcnIcon")
  String? get mcnIcon => throw _privateConstructorUsedError;
  @JsonKey(name: "adFlagShow")
  int? get adFlagShow => throw _privateConstructorUsedError;
  @JsonKey(name: "adsType")
  int? get adsType => throw _privateConstructorUsedError;
  @JsonKey(name: "worksType")
  int? get worksType => throw _privateConstructorUsedError;
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "createTimeStr")
  String? get createTimeStr => throw _privateConstructorUsedError;
  @JsonKey(name: "scoreName")
  String? get scoreName => throw _privateConstructorUsedError;
  @JsonKey(name: "adsUrl")
  String? get adsUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "uVContent")
  int? get uVContent => throw _privateConstructorUsedError;
  @JsonKey(name: "avatarUrl")
  String? get avatarUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "entityType")
  int? get entityType => throw _privateConstructorUsedError;
  @JsonKey(name: "nickName")
  String? get nickName => throw _privateConstructorUsedError;
  @JsonKey(name: "carClubId")
  dynamic get carClubId => throw _privateConstructorUsedError;
  @JsonKey(name: "userId")
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "url")
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(name: "coverHeight")
  int? get coverHeight => throw _privateConstructorUsedError;
  @JsonKey(name: "createTime")
  String? get createTime => throw _privateConstructorUsedError;
  @JsonKey(name: "videoCover")
  String? get videoCover => throw _privateConstructorUsedError;
  @JsonKey(name: "coverWidth")
  int? get coverWidth => throw _privateConstructorUsedError;
  @JsonKey(name: "subType")
  int? get subType => throw _privateConstructorUsedError;
  @JsonKey(name: "mcnId")
  int? get mcnId => throw _privateConstructorUsedError;
  @JsonKey(name: "isThumbs")
  int? get isThumbs => throw _privateConstructorUsedError;
  @JsonKey(name: "newsPics")
  List<String>? get newsPics => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkCopyWith<Work> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkCopyWith<$Res> {
  factory $WorkCopyWith(Work value, $Res Function(Work) then) =
      _$WorkCopyWithImpl<$Res, Work>;
  @useResult
  $Res call(
      {@JsonKey(name: "mcnRealName") String? mcnRealName,
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
      @JsonKey(name: "newsPics") List<String>? newsPics});
}

/// @nodoc
class _$WorkCopyWithImpl<$Res, $Val extends Work>
    implements $WorkCopyWith<$Res> {
  _$WorkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mcnRealName = freezed,
    Object? uVContentStr = freezed,
    Object? adFlag = freezed,
    Object? clubName = freezed,
    Object? description = freezed,
    Object? title = freezed,
    Object? duration = freezed,
    Object? activityId = freezed,
    Object? score = freezed,
    Object? checkStatus = freezed,
    Object? mcnIcon = freezed,
    Object? adFlagShow = freezed,
    Object? adsType = freezed,
    Object? worksType = freezed,
    Object? id = freezed,
    Object? createTimeStr = freezed,
    Object? scoreName = freezed,
    Object? adsUrl = freezed,
    Object? uVContent = freezed,
    Object? avatarUrl = freezed,
    Object? entityType = freezed,
    Object? nickName = freezed,
    Object? carClubId = freezed,
    Object? userId = freezed,
    Object? url = freezed,
    Object? coverHeight = freezed,
    Object? createTime = freezed,
    Object? videoCover = freezed,
    Object? coverWidth = freezed,
    Object? subType = freezed,
    Object? mcnId = freezed,
    Object? isThumbs = freezed,
    Object? newsPics = freezed,
  }) {
    return _then(_value.copyWith(
      mcnRealName: freezed == mcnRealName
          ? _value.mcnRealName
          : mcnRealName // ignore: cast_nullable_to_non_nullable
              as String?,
      uVContentStr: freezed == uVContentStr
          ? _value.uVContentStr
          : uVContentStr // ignore: cast_nullable_to_non_nullable
              as String?,
      adFlag: freezed == adFlag
          ? _value.adFlag
          : adFlag // ignore: cast_nullable_to_non_nullable
              as int?,
      clubName: freezed == clubName
          ? _value.clubName
          : clubName // ignore: cast_nullable_to_non_nullable
              as dynamic,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String?,
      activityId: freezed == activityId
          ? _value.activityId
          : activityId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double?,
      checkStatus: freezed == checkStatus
          ? _value.checkStatus
          : checkStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      mcnIcon: freezed == mcnIcon
          ? _value.mcnIcon
          : mcnIcon // ignore: cast_nullable_to_non_nullable
              as String?,
      adFlagShow: freezed == adFlagShow
          ? _value.adFlagShow
          : adFlagShow // ignore: cast_nullable_to_non_nullable
              as int?,
      adsType: freezed == adsType
          ? _value.adsType
          : adsType // ignore: cast_nullable_to_non_nullable
              as int?,
      worksType: freezed == worksType
          ? _value.worksType
          : worksType // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      createTimeStr: freezed == createTimeStr
          ? _value.createTimeStr
          : createTimeStr // ignore: cast_nullable_to_non_nullable
              as String?,
      scoreName: freezed == scoreName
          ? _value.scoreName
          : scoreName // ignore: cast_nullable_to_non_nullable
              as String?,
      adsUrl: freezed == adsUrl
          ? _value.adsUrl
          : adsUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      uVContent: freezed == uVContent
          ? _value.uVContent
          : uVContent // ignore: cast_nullable_to_non_nullable
              as int?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      entityType: freezed == entityType
          ? _value.entityType
          : entityType // ignore: cast_nullable_to_non_nullable
              as int?,
      nickName: freezed == nickName
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String?,
      carClubId: freezed == carClubId
          ? _value.carClubId
          : carClubId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      coverHeight: freezed == coverHeight
          ? _value.coverHeight
          : coverHeight // ignore: cast_nullable_to_non_nullable
              as int?,
      createTime: freezed == createTime
          ? _value.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as String?,
      videoCover: freezed == videoCover
          ? _value.videoCover
          : videoCover // ignore: cast_nullable_to_non_nullable
              as String?,
      coverWidth: freezed == coverWidth
          ? _value.coverWidth
          : coverWidth // ignore: cast_nullable_to_non_nullable
              as int?,
      subType: freezed == subType
          ? _value.subType
          : subType // ignore: cast_nullable_to_non_nullable
              as int?,
      mcnId: freezed == mcnId
          ? _value.mcnId
          : mcnId // ignore: cast_nullable_to_non_nullable
              as int?,
      isThumbs: freezed == isThumbs
          ? _value.isThumbs
          : isThumbs // ignore: cast_nullable_to_non_nullable
              as int?,
      newsPics: freezed == newsPics
          ? _value.newsPics
          : newsPics // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WorkImplCopyWith<$Res> implements $WorkCopyWith<$Res> {
  factory _$$WorkImplCopyWith(
          _$WorkImpl value, $Res Function(_$WorkImpl) then) =
      __$$WorkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "mcnRealName") String? mcnRealName,
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
      @JsonKey(name: "newsPics") List<String>? newsPics});
}

/// @nodoc
class __$$WorkImplCopyWithImpl<$Res>
    extends _$WorkCopyWithImpl<$Res, _$WorkImpl>
    implements _$$WorkImplCopyWith<$Res> {
  __$$WorkImplCopyWithImpl(_$WorkImpl _value, $Res Function(_$WorkImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mcnRealName = freezed,
    Object? uVContentStr = freezed,
    Object? adFlag = freezed,
    Object? clubName = freezed,
    Object? description = freezed,
    Object? title = freezed,
    Object? duration = freezed,
    Object? activityId = freezed,
    Object? score = freezed,
    Object? checkStatus = freezed,
    Object? mcnIcon = freezed,
    Object? adFlagShow = freezed,
    Object? adsType = freezed,
    Object? worksType = freezed,
    Object? id = freezed,
    Object? createTimeStr = freezed,
    Object? scoreName = freezed,
    Object? adsUrl = freezed,
    Object? uVContent = freezed,
    Object? avatarUrl = freezed,
    Object? entityType = freezed,
    Object? nickName = freezed,
    Object? carClubId = freezed,
    Object? userId = freezed,
    Object? url = freezed,
    Object? coverHeight = freezed,
    Object? createTime = freezed,
    Object? videoCover = freezed,
    Object? coverWidth = freezed,
    Object? subType = freezed,
    Object? mcnId = freezed,
    Object? isThumbs = freezed,
    Object? newsPics = freezed,
  }) {
    return _then(_$WorkImpl(
      mcnRealName: freezed == mcnRealName
          ? _value.mcnRealName
          : mcnRealName // ignore: cast_nullable_to_non_nullable
              as String?,
      uVContentStr: freezed == uVContentStr
          ? _value.uVContentStr
          : uVContentStr // ignore: cast_nullable_to_non_nullable
              as String?,
      adFlag: freezed == adFlag
          ? _value.adFlag
          : adFlag // ignore: cast_nullable_to_non_nullable
              as int?,
      clubName: freezed == clubName
          ? _value.clubName
          : clubName // ignore: cast_nullable_to_non_nullable
              as dynamic,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String?,
      activityId: freezed == activityId
          ? _value.activityId
          : activityId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double?,
      checkStatus: freezed == checkStatus
          ? _value.checkStatus
          : checkStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      mcnIcon: freezed == mcnIcon
          ? _value.mcnIcon
          : mcnIcon // ignore: cast_nullable_to_non_nullable
              as String?,
      adFlagShow: freezed == adFlagShow
          ? _value.adFlagShow
          : adFlagShow // ignore: cast_nullable_to_non_nullable
              as int?,
      adsType: freezed == adsType
          ? _value.adsType
          : adsType // ignore: cast_nullable_to_non_nullable
              as int?,
      worksType: freezed == worksType
          ? _value.worksType
          : worksType // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      createTimeStr: freezed == createTimeStr
          ? _value.createTimeStr
          : createTimeStr // ignore: cast_nullable_to_non_nullable
              as String?,
      scoreName: freezed == scoreName
          ? _value.scoreName
          : scoreName // ignore: cast_nullable_to_non_nullable
              as String?,
      adsUrl: freezed == adsUrl
          ? _value.adsUrl
          : adsUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      uVContent: freezed == uVContent
          ? _value.uVContent
          : uVContent // ignore: cast_nullable_to_non_nullable
              as int?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      entityType: freezed == entityType
          ? _value.entityType
          : entityType // ignore: cast_nullable_to_non_nullable
              as int?,
      nickName: freezed == nickName
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String?,
      carClubId: freezed == carClubId
          ? _value.carClubId
          : carClubId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      coverHeight: freezed == coverHeight
          ? _value.coverHeight
          : coverHeight // ignore: cast_nullable_to_non_nullable
              as int?,
      createTime: freezed == createTime
          ? _value.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as String?,
      videoCover: freezed == videoCover
          ? _value.videoCover
          : videoCover // ignore: cast_nullable_to_non_nullable
              as String?,
      coverWidth: freezed == coverWidth
          ? _value.coverWidth
          : coverWidth // ignore: cast_nullable_to_non_nullable
              as int?,
      subType: freezed == subType
          ? _value.subType
          : subType // ignore: cast_nullable_to_non_nullable
              as int?,
      mcnId: freezed == mcnId
          ? _value.mcnId
          : mcnId // ignore: cast_nullable_to_non_nullable
              as int?,
      isThumbs: freezed == isThumbs
          ? _value.isThumbs
          : isThumbs // ignore: cast_nullable_to_non_nullable
              as int?,
      newsPics: freezed == newsPics
          ? _value._newsPics
          : newsPics // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WorkImpl implements _Work {
  const _$WorkImpl(
      {@JsonKey(name: "mcnRealName") this.mcnRealName,
      @JsonKey(name: "uVContentStr") this.uVContentStr,
      @JsonKey(name: "adFlag") this.adFlag,
      @JsonKey(name: "clubName") this.clubName,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "title") this.title,
      @JsonKey(name: "duration") this.duration,
      @JsonKey(name: "activityId") this.activityId,
      @JsonKey(name: "score") this.score,
      @JsonKey(name: "checkStatus") this.checkStatus,
      @JsonKey(name: "mcnIcon") this.mcnIcon,
      @JsonKey(name: "adFlagShow") this.adFlagShow,
      @JsonKey(name: "adsType") this.adsType,
      @JsonKey(name: "worksType") this.worksType,
      @JsonKey(name: "id") this.id,
      @JsonKey(name: "createTimeStr") this.createTimeStr,
      @JsonKey(name: "scoreName") this.scoreName,
      @JsonKey(name: "adsUrl") this.adsUrl,
      @JsonKey(name: "uVContent") this.uVContent,
      @JsonKey(name: "avatarUrl") this.avatarUrl,
      @JsonKey(name: "entityType") this.entityType,
      @JsonKey(name: "nickName") this.nickName,
      @JsonKey(name: "carClubId") this.carClubId,
      @JsonKey(name: "userId") this.userId,
      @JsonKey(name: "url") this.url,
      @JsonKey(name: "coverHeight") this.coverHeight,
      @JsonKey(name: "createTime") this.createTime,
      @JsonKey(name: "videoCover") this.videoCover,
      @JsonKey(name: "coverWidth") this.coverWidth,
      @JsonKey(name: "subType") this.subType,
      @JsonKey(name: "mcnId") this.mcnId,
      @JsonKey(name: "isThumbs") this.isThumbs,
      @JsonKey(name: "newsPics") final List<String>? newsPics})
      : _newsPics = newsPics;

  factory _$WorkImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkImplFromJson(json);

  @override
  @JsonKey(name: "mcnRealName")
  final String? mcnRealName;
  @override
  @JsonKey(name: "uVContentStr")
  final String? uVContentStr;
  @override
  @JsonKey(name: "adFlag")
  final int? adFlag;
  @override
  @JsonKey(name: "clubName")
  final dynamic clubName;
  @override
  @JsonKey(name: "description")
  final String? description;
  @override
  @JsonKey(name: "title")
  final String? title;
  @override
  @JsonKey(name: "duration")
  final String? duration;
  @override
  @JsonKey(name: "activityId")
  final dynamic activityId;
  @override
  @JsonKey(name: "score")
  final double? score;
  @override
  @JsonKey(name: "checkStatus")
  final int? checkStatus;
  @override
  @JsonKey(name: "mcnIcon")
  final String? mcnIcon;
  @override
  @JsonKey(name: "adFlagShow")
  final int? adFlagShow;
  @override
  @JsonKey(name: "adsType")
  final int? adsType;
  @override
  @JsonKey(name: "worksType")
  final int? worksType;
  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "createTimeStr")
  final String? createTimeStr;
  @override
  @JsonKey(name: "scoreName")
  final String? scoreName;
  @override
  @JsonKey(name: "adsUrl")
  final String? adsUrl;
  @override
  @JsonKey(name: "uVContent")
  final int? uVContent;
  @override
  @JsonKey(name: "avatarUrl")
  final String? avatarUrl;
  @override
  @JsonKey(name: "entityType")
  final int? entityType;
  @override
  @JsonKey(name: "nickName")
  final String? nickName;
  @override
  @JsonKey(name: "carClubId")
  final dynamic carClubId;
  @override
  @JsonKey(name: "userId")
  final int? userId;
  @override
  @JsonKey(name: "url")
  final String? url;
  @override
  @JsonKey(name: "coverHeight")
  final int? coverHeight;
  @override
  @JsonKey(name: "createTime")
  final String? createTime;
  @override
  @JsonKey(name: "videoCover")
  final String? videoCover;
  @override
  @JsonKey(name: "coverWidth")
  final int? coverWidth;
  @override
  @JsonKey(name: "subType")
  final int? subType;
  @override
  @JsonKey(name: "mcnId")
  final int? mcnId;
  @override
  @JsonKey(name: "isThumbs")
  final int? isThumbs;
  final List<String>? _newsPics;
  @override
  @JsonKey(name: "newsPics")
  List<String>? get newsPics {
    final value = _newsPics;
    if (value == null) return null;
    if (_newsPics is EqualUnmodifiableListView) return _newsPics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Work(mcnRealName: $mcnRealName, uVContentStr: $uVContentStr, adFlag: $adFlag, clubName: $clubName, description: $description, title: $title, duration: $duration, activityId: $activityId, score: $score, checkStatus: $checkStatus, mcnIcon: $mcnIcon, adFlagShow: $adFlagShow, adsType: $adsType, worksType: $worksType, id: $id, createTimeStr: $createTimeStr, scoreName: $scoreName, adsUrl: $adsUrl, uVContent: $uVContent, avatarUrl: $avatarUrl, entityType: $entityType, nickName: $nickName, carClubId: $carClubId, userId: $userId, url: $url, coverHeight: $coverHeight, createTime: $createTime, videoCover: $videoCover, coverWidth: $coverWidth, subType: $subType, mcnId: $mcnId, isThumbs: $isThumbs, newsPics: $newsPics)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkImpl &&
            (identical(other.mcnRealName, mcnRealName) ||
                other.mcnRealName == mcnRealName) &&
            (identical(other.uVContentStr, uVContentStr) ||
                other.uVContentStr == uVContentStr) &&
            (identical(other.adFlag, adFlag) || other.adFlag == adFlag) &&
            const DeepCollectionEquality().equals(other.clubName, clubName) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            const DeepCollectionEquality()
                .equals(other.activityId, activityId) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.checkStatus, checkStatus) ||
                other.checkStatus == checkStatus) &&
            (identical(other.mcnIcon, mcnIcon) || other.mcnIcon == mcnIcon) &&
            (identical(other.adFlagShow, adFlagShow) ||
                other.adFlagShow == adFlagShow) &&
            (identical(other.adsType, adsType) || other.adsType == adsType) &&
            (identical(other.worksType, worksType) ||
                other.worksType == worksType) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createTimeStr, createTimeStr) ||
                other.createTimeStr == createTimeStr) &&
            (identical(other.scoreName, scoreName) ||
                other.scoreName == scoreName) &&
            (identical(other.adsUrl, adsUrl) || other.adsUrl == adsUrl) &&
            (identical(other.uVContent, uVContent) ||
                other.uVContent == uVContent) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.entityType, entityType) ||
                other.entityType == entityType) &&
            (identical(other.nickName, nickName) ||
                other.nickName == nickName) &&
            const DeepCollectionEquality().equals(other.carClubId, carClubId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.coverHeight, coverHeight) ||
                other.coverHeight == coverHeight) &&
            (identical(other.createTime, createTime) ||
                other.createTime == createTime) &&
            (identical(other.videoCover, videoCover) ||
                other.videoCover == videoCover) &&
            (identical(other.coverWidth, coverWidth) ||
                other.coverWidth == coverWidth) &&
            (identical(other.subType, subType) || other.subType == subType) &&
            (identical(other.mcnId, mcnId) || other.mcnId == mcnId) &&
            (identical(other.isThumbs, isThumbs) ||
                other.isThumbs == isThumbs) &&
            const DeepCollectionEquality().equals(other._newsPics, _newsPics));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        mcnRealName,
        uVContentStr,
        adFlag,
        const DeepCollectionEquality().hash(clubName),
        description,
        title,
        duration,
        const DeepCollectionEquality().hash(activityId),
        score,
        checkStatus,
        mcnIcon,
        adFlagShow,
        adsType,
        worksType,
        id,
        createTimeStr,
        scoreName,
        adsUrl,
        uVContent,
        avatarUrl,
        entityType,
        nickName,
        const DeepCollectionEquality().hash(carClubId),
        userId,
        url,
        coverHeight,
        createTime,
        videoCover,
        coverWidth,
        subType,
        mcnId,
        isThumbs,
        const DeepCollectionEquality().hash(_newsPics)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkImplCopyWith<_$WorkImpl> get copyWith =>
      __$$WorkImplCopyWithImpl<_$WorkImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkImplToJson(
      this,
    );
  }
}

abstract class _Work implements Work {
  const factory _Work(
      {@JsonKey(name: "mcnRealName") final String? mcnRealName,
      @JsonKey(name: "uVContentStr") final String? uVContentStr,
      @JsonKey(name: "adFlag") final int? adFlag,
      @JsonKey(name: "clubName") final dynamic clubName,
      @JsonKey(name: "description") final String? description,
      @JsonKey(name: "title") final String? title,
      @JsonKey(name: "duration") final String? duration,
      @JsonKey(name: "activityId") final dynamic activityId,
      @JsonKey(name: "score") final double? score,
      @JsonKey(name: "checkStatus") final int? checkStatus,
      @JsonKey(name: "mcnIcon") final String? mcnIcon,
      @JsonKey(name: "adFlagShow") final int? adFlagShow,
      @JsonKey(name: "adsType") final int? adsType,
      @JsonKey(name: "worksType") final int? worksType,
      @JsonKey(name: "id") final int? id,
      @JsonKey(name: "createTimeStr") final String? createTimeStr,
      @JsonKey(name: "scoreName") final String? scoreName,
      @JsonKey(name: "adsUrl") final String? adsUrl,
      @JsonKey(name: "uVContent") final int? uVContent,
      @JsonKey(name: "avatarUrl") final String? avatarUrl,
      @JsonKey(name: "entityType") final int? entityType,
      @JsonKey(name: "nickName") final String? nickName,
      @JsonKey(name: "carClubId") final dynamic carClubId,
      @JsonKey(name: "userId") final int? userId,
      @JsonKey(name: "url") final String? url,
      @JsonKey(name: "coverHeight") final int? coverHeight,
      @JsonKey(name: "createTime") final String? createTime,
      @JsonKey(name: "videoCover") final String? videoCover,
      @JsonKey(name: "coverWidth") final int? coverWidth,
      @JsonKey(name: "subType") final int? subType,
      @JsonKey(name: "mcnId") final int? mcnId,
      @JsonKey(name: "isThumbs") final int? isThumbs,
      @JsonKey(name: "newsPics") final List<String>? newsPics}) = _$WorkImpl;

  factory _Work.fromJson(Map<String, dynamic> json) = _$WorkImpl.fromJson;

  @override
  @JsonKey(name: "mcnRealName")
  String? get mcnRealName;
  @override
  @JsonKey(name: "uVContentStr")
  String? get uVContentStr;
  @override
  @JsonKey(name: "adFlag")
  int? get adFlag;
  @override
  @JsonKey(name: "clubName")
  dynamic get clubName;
  @override
  @JsonKey(name: "description")
  String? get description;
  @override
  @JsonKey(name: "title")
  String? get title;
  @override
  @JsonKey(name: "duration")
  String? get duration;
  @override
  @JsonKey(name: "activityId")
  dynamic get activityId;
  @override
  @JsonKey(name: "score")
  double? get score;
  @override
  @JsonKey(name: "checkStatus")
  int? get checkStatus;
  @override
  @JsonKey(name: "mcnIcon")
  String? get mcnIcon;
  @override
  @JsonKey(name: "adFlagShow")
  int? get adFlagShow;
  @override
  @JsonKey(name: "adsType")
  int? get adsType;
  @override
  @JsonKey(name: "worksType")
  int? get worksType;
  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "createTimeStr")
  String? get createTimeStr;
  @override
  @JsonKey(name: "scoreName")
  String? get scoreName;
  @override
  @JsonKey(name: "adsUrl")
  String? get adsUrl;
  @override
  @JsonKey(name: "uVContent")
  int? get uVContent;
  @override
  @JsonKey(name: "avatarUrl")
  String? get avatarUrl;
  @override
  @JsonKey(name: "entityType")
  int? get entityType;
  @override
  @JsonKey(name: "nickName")
  String? get nickName;
  @override
  @JsonKey(name: "carClubId")
  dynamic get carClubId;
  @override
  @JsonKey(name: "userId")
  int? get userId;
  @override
  @JsonKey(name: "url")
  String? get url;
  @override
  @JsonKey(name: "coverHeight")
  int? get coverHeight;
  @override
  @JsonKey(name: "createTime")
  String? get createTime;
  @override
  @JsonKey(name: "videoCover")
  String? get videoCover;
  @override
  @JsonKey(name: "coverWidth")
  int? get coverWidth;
  @override
  @JsonKey(name: "subType")
  int? get subType;
  @override
  @JsonKey(name: "mcnId")
  int? get mcnId;
  @override
  @JsonKey(name: "isThumbs")
  int? get isThumbs;
  @override
  @JsonKey(name: "newsPics")
  List<String>? get newsPics;
  @override
  @JsonKey(ignore: true)
  _$$WorkImplCopyWith<_$WorkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
