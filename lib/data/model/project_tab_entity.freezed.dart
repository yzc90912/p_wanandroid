// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_tab_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProjectTabEntity _$ProjectTabEntityFromJson(Map<String, dynamic> json) {
  return _ProjectTabEntity.fromJson(json);
}

/// @nodoc
mixin _$ProjectTabEntity {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProjectTabEntityCopyWith<ProjectTabEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectTabEntityCopyWith<$Res> {
  factory $ProjectTabEntityCopyWith(
          ProjectTabEntity value, $Res Function(ProjectTabEntity) then) =
      _$ProjectTabEntityCopyWithImpl<$Res, ProjectTabEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id, @JsonKey(name: "name") String? name});
}

/// @nodoc
class _$ProjectTabEntityCopyWithImpl<$Res, $Val extends ProjectTabEntity>
    implements $ProjectTabEntityCopyWith<$Res> {
  _$ProjectTabEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProjectTabEntityImplCopyWith<$Res>
    implements $ProjectTabEntityCopyWith<$Res> {
  factory _$$ProjectTabEntityImplCopyWith(_$ProjectTabEntityImpl value,
          $Res Function(_$ProjectTabEntityImpl) then) =
      __$$ProjectTabEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id, @JsonKey(name: "name") String? name});
}

/// @nodoc
class __$$ProjectTabEntityImplCopyWithImpl<$Res>
    extends _$ProjectTabEntityCopyWithImpl<$Res, _$ProjectTabEntityImpl>
    implements _$$ProjectTabEntityImplCopyWith<$Res> {
  __$$ProjectTabEntityImplCopyWithImpl(_$ProjectTabEntityImpl _value,
      $Res Function(_$ProjectTabEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$ProjectTabEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProjectTabEntityImpl implements _ProjectTabEntity {
  const _$ProjectTabEntityImpl(
      {@JsonKey(name: "id") this.id, @JsonKey(name: "name") this.name});

  factory _$ProjectTabEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectTabEntityImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "name")
  final String? name;

  @override
  String toString() {
    return 'ProjectTabEntity(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectTabEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectTabEntityImplCopyWith<_$ProjectTabEntityImpl> get copyWith =>
      __$$ProjectTabEntityImplCopyWithImpl<_$ProjectTabEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectTabEntityImplToJson(
      this,
    );
  }
}

abstract class _ProjectTabEntity implements ProjectTabEntity {
  const factory _ProjectTabEntity(
      {@JsonKey(name: "id") final int? id,
      @JsonKey(name: "name") final String? name}) = _$ProjectTabEntityImpl;

  factory _ProjectTabEntity.fromJson(Map<String, dynamic> json) =
      _$ProjectTabEntityImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$ProjectTabEntityImplCopyWith<_$ProjectTabEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
