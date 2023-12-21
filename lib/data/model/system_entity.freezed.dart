// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'system_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SystemEntity _$SystemEntityFromJson(Map<String, dynamic> json) {
  return _SystemEntity.fromJson(json);
}

/// @nodoc
mixin _$SystemEntity {
  @JsonKey(name: "articleList")
  List<dynamic>? get articleList => throw _privateConstructorUsedError;
  @JsonKey(name: "author")
  String? get author => throw _privateConstructorUsedError;
  @JsonKey(name: "children")
  List<SystemEntity>? get children => throw _privateConstructorUsedError;
  @JsonKey(name: "courseId")
  int? get courseId => throw _privateConstructorUsedError;
  @JsonKey(name: "cover")
  String? get cover => throw _privateConstructorUsedError;
  @JsonKey(name: "desc")
  String? get desc => throw _privateConstructorUsedError;
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "lisense")
  String? get lisense => throw _privateConstructorUsedError;
  @JsonKey(name: "lisenseLink")
  String? get lisenseLink => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "order")
  int? get order => throw _privateConstructorUsedError;
  @JsonKey(name: "parentChapterId")
  int? get parentChapterId => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  int? get type => throw _privateConstructorUsedError;
  @JsonKey(name: "userControlSetTop")
  bool? get userControlSetTop => throw _privateConstructorUsedError;
  @JsonKey(name: "visible")
  int? get visible => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SystemEntityCopyWith<SystemEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SystemEntityCopyWith<$Res> {
  factory $SystemEntityCopyWith(
          SystemEntity value, $Res Function(SystemEntity) then) =
      _$SystemEntityCopyWithImpl<$Res, SystemEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: "articleList") List<dynamic>? articleList,
      @JsonKey(name: "author") String? author,
      @JsonKey(name: "children") List<SystemEntity>? children,
      @JsonKey(name: "courseId") int? courseId,
      @JsonKey(name: "cover") String? cover,
      @JsonKey(name: "desc") String? desc,
      @JsonKey(name: "id") int? id,
      @JsonKey(name: "lisense") String? lisense,
      @JsonKey(name: "lisenseLink") String? lisenseLink,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "order") int? order,
      @JsonKey(name: "parentChapterId") int? parentChapterId,
      @JsonKey(name: "type") int? type,
      @JsonKey(name: "userControlSetTop") bool? userControlSetTop,
      @JsonKey(name: "visible") int? visible});
}

/// @nodoc
class _$SystemEntityCopyWithImpl<$Res, $Val extends SystemEntity>
    implements $SystemEntityCopyWith<$Res> {
  _$SystemEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? articleList = freezed,
    Object? author = freezed,
    Object? children = freezed,
    Object? courseId = freezed,
    Object? cover = freezed,
    Object? desc = freezed,
    Object? id = freezed,
    Object? lisense = freezed,
    Object? lisenseLink = freezed,
    Object? name = freezed,
    Object? order = freezed,
    Object? parentChapterId = freezed,
    Object? type = freezed,
    Object? userControlSetTop = freezed,
    Object? visible = freezed,
  }) {
    return _then(_value.copyWith(
      articleList: freezed == articleList
          ? _value.articleList
          : articleList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      children: freezed == children
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<SystemEntity>?,
      courseId: freezed == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as int?,
      cover: freezed == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String?,
      desc: freezed == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      lisense: freezed == lisense
          ? _value.lisense
          : lisense // ignore: cast_nullable_to_non_nullable
              as String?,
      lisenseLink: freezed == lisenseLink
          ? _value.lisenseLink
          : lisenseLink // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
      parentChapterId: freezed == parentChapterId
          ? _value.parentChapterId
          : parentChapterId // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      userControlSetTop: freezed == userControlSetTop
          ? _value.userControlSetTop
          : userControlSetTop // ignore: cast_nullable_to_non_nullable
              as bool?,
      visible: freezed == visible
          ? _value.visible
          : visible // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SystemEntityImplCopyWith<$Res>
    implements $SystemEntityCopyWith<$Res> {
  factory _$$SystemEntityImplCopyWith(
          _$SystemEntityImpl value, $Res Function(_$SystemEntityImpl) then) =
      __$$SystemEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "articleList") List<dynamic>? articleList,
      @JsonKey(name: "author") String? author,
      @JsonKey(name: "children") List<SystemEntity>? children,
      @JsonKey(name: "courseId") int? courseId,
      @JsonKey(name: "cover") String? cover,
      @JsonKey(name: "desc") String? desc,
      @JsonKey(name: "id") int? id,
      @JsonKey(name: "lisense") String? lisense,
      @JsonKey(name: "lisenseLink") String? lisenseLink,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "order") int? order,
      @JsonKey(name: "parentChapterId") int? parentChapterId,
      @JsonKey(name: "type") int? type,
      @JsonKey(name: "userControlSetTop") bool? userControlSetTop,
      @JsonKey(name: "visible") int? visible});
}

/// @nodoc
class __$$SystemEntityImplCopyWithImpl<$Res>
    extends _$SystemEntityCopyWithImpl<$Res, _$SystemEntityImpl>
    implements _$$SystemEntityImplCopyWith<$Res> {
  __$$SystemEntityImplCopyWithImpl(
      _$SystemEntityImpl _value, $Res Function(_$SystemEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? articleList = freezed,
    Object? author = freezed,
    Object? children = freezed,
    Object? courseId = freezed,
    Object? cover = freezed,
    Object? desc = freezed,
    Object? id = freezed,
    Object? lisense = freezed,
    Object? lisenseLink = freezed,
    Object? name = freezed,
    Object? order = freezed,
    Object? parentChapterId = freezed,
    Object? type = freezed,
    Object? userControlSetTop = freezed,
    Object? visible = freezed,
  }) {
    return _then(_$SystemEntityImpl(
      articleList: freezed == articleList
          ? _value._articleList
          : articleList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      children: freezed == children
          ? _value._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<SystemEntity>?,
      courseId: freezed == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as int?,
      cover: freezed == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String?,
      desc: freezed == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      lisense: freezed == lisense
          ? _value.lisense
          : lisense // ignore: cast_nullable_to_non_nullable
              as String?,
      lisenseLink: freezed == lisenseLink
          ? _value.lisenseLink
          : lisenseLink // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
      parentChapterId: freezed == parentChapterId
          ? _value.parentChapterId
          : parentChapterId // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      userControlSetTop: freezed == userControlSetTop
          ? _value.userControlSetTop
          : userControlSetTop // ignore: cast_nullable_to_non_nullable
              as bool?,
      visible: freezed == visible
          ? _value.visible
          : visible // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SystemEntityImpl implements _SystemEntity {
  const _$SystemEntityImpl(
      {@JsonKey(name: "articleList") final List<dynamic>? articleList,
      @JsonKey(name: "author") this.author,
      @JsonKey(name: "children") final List<SystemEntity>? children,
      @JsonKey(name: "courseId") this.courseId,
      @JsonKey(name: "cover") this.cover,
      @JsonKey(name: "desc") this.desc,
      @JsonKey(name: "id") this.id,
      @JsonKey(name: "lisense") this.lisense,
      @JsonKey(name: "lisenseLink") this.lisenseLink,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "order") this.order,
      @JsonKey(name: "parentChapterId") this.parentChapterId,
      @JsonKey(name: "type") this.type,
      @JsonKey(name: "userControlSetTop") this.userControlSetTop,
      @JsonKey(name: "visible") this.visible})
      : _articleList = articleList,
        _children = children;

  factory _$SystemEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$SystemEntityImplFromJson(json);

  final List<dynamic>? _articleList;
  @override
  @JsonKey(name: "articleList")
  List<dynamic>? get articleList {
    final value = _articleList;
    if (value == null) return null;
    if (_articleList is EqualUnmodifiableListView) return _articleList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "author")
  final String? author;
  final List<SystemEntity>? _children;
  @override
  @JsonKey(name: "children")
  List<SystemEntity>? get children {
    final value = _children;
    if (value == null) return null;
    if (_children is EqualUnmodifiableListView) return _children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "courseId")
  final int? courseId;
  @override
  @JsonKey(name: "cover")
  final String? cover;
  @override
  @JsonKey(name: "desc")
  final String? desc;
  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "lisense")
  final String? lisense;
  @override
  @JsonKey(name: "lisenseLink")
  final String? lisenseLink;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "order")
  final int? order;
  @override
  @JsonKey(name: "parentChapterId")
  final int? parentChapterId;
  @override
  @JsonKey(name: "type")
  final int? type;
  @override
  @JsonKey(name: "userControlSetTop")
  final bool? userControlSetTop;
  @override
  @JsonKey(name: "visible")
  final int? visible;

  @override
  String toString() {
    return 'SystemEntity(articleList: $articleList, author: $author, children: $children, courseId: $courseId, cover: $cover, desc: $desc, id: $id, lisense: $lisense, lisenseLink: $lisenseLink, name: $name, order: $order, parentChapterId: $parentChapterId, type: $type, userControlSetTop: $userControlSetTop, visible: $visible)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SystemEntityImpl &&
            const DeepCollectionEquality()
                .equals(other._articleList, _articleList) &&
            (identical(other.author, author) || other.author == author) &&
            const DeepCollectionEquality().equals(other._children, _children) &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.cover, cover) || other.cover == cover) &&
            (identical(other.desc, desc) || other.desc == desc) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.lisense, lisense) || other.lisense == lisense) &&
            (identical(other.lisenseLink, lisenseLink) ||
                other.lisenseLink == lisenseLink) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.parentChapterId, parentChapterId) ||
                other.parentChapterId == parentChapterId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.userControlSetTop, userControlSetTop) ||
                other.userControlSetTop == userControlSetTop) &&
            (identical(other.visible, visible) || other.visible == visible));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_articleList),
      author,
      const DeepCollectionEquality().hash(_children),
      courseId,
      cover,
      desc,
      id,
      lisense,
      lisenseLink,
      name,
      order,
      parentChapterId,
      type,
      userControlSetTop,
      visible);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SystemEntityImplCopyWith<_$SystemEntityImpl> get copyWith =>
      __$$SystemEntityImplCopyWithImpl<_$SystemEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SystemEntityImplToJson(
      this,
    );
  }
}

abstract class _SystemEntity implements SystemEntity {
  const factory _SystemEntity(
      {@JsonKey(name: "articleList") final List<dynamic>? articleList,
      @JsonKey(name: "author") final String? author,
      @JsonKey(name: "children") final List<SystemEntity>? children,
      @JsonKey(name: "courseId") final int? courseId,
      @JsonKey(name: "cover") final String? cover,
      @JsonKey(name: "desc") final String? desc,
      @JsonKey(name: "id") final int? id,
      @JsonKey(name: "lisense") final String? lisense,
      @JsonKey(name: "lisenseLink") final String? lisenseLink,
      @JsonKey(name: "name") final String? name,
      @JsonKey(name: "order") final int? order,
      @JsonKey(name: "parentChapterId") final int? parentChapterId,
      @JsonKey(name: "type") final int? type,
      @JsonKey(name: "userControlSetTop") final bool? userControlSetTop,
      @JsonKey(name: "visible") final int? visible}) = _$SystemEntityImpl;

  factory _SystemEntity.fromJson(Map<String, dynamic> json) =
      _$SystemEntityImpl.fromJson;

  @override
  @JsonKey(name: "articleList")
  List<dynamic>? get articleList;
  @override
  @JsonKey(name: "author")
  String? get author;
  @override
  @JsonKey(name: "children")
  List<SystemEntity>? get children;
  @override
  @JsonKey(name: "courseId")
  int? get courseId;
  @override
  @JsonKey(name: "cover")
  String? get cover;
  @override
  @JsonKey(name: "desc")
  String? get desc;
  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "lisense")
  String? get lisense;
  @override
  @JsonKey(name: "lisenseLink")
  String? get lisenseLink;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "order")
  int? get order;
  @override
  @JsonKey(name: "parentChapterId")
  int? get parentChapterId;
  @override
  @JsonKey(name: "type")
  int? get type;
  @override
  @JsonKey(name: "userControlSetTop")
  bool? get userControlSetTop;
  @override
  @JsonKey(name: "visible")
  int? get visible;
  @override
  @JsonKey(ignore: true)
  _$$SystemEntityImplCopyWith<_$SystemEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
