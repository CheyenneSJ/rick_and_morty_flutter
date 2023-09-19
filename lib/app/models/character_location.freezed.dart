// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CharacterLocation _$CharacterLocationFromJson(Map<String, dynamic> json) {
  return _CharacterLocation.fromJson(json);
}

/// @nodoc
mixin _$CharacterLocation {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CharacterLocationCopyWith<CharacterLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterLocationCopyWith<$Res> {
  factory $CharacterLocationCopyWith(
          CharacterLocation value, $Res Function(CharacterLocation) then) =
      _$CharacterLocationCopyWithImpl<$Res, CharacterLocation>;
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class _$CharacterLocationCopyWithImpl<$Res, $Val extends CharacterLocation>
    implements $CharacterLocationCopyWith<$Res> {
  _$CharacterLocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CharacterLocationCopyWith<$Res>
    implements $CharacterLocationCopyWith<$Res> {
  factory _$$_CharacterLocationCopyWith(_$_CharacterLocation value,
          $Res Function(_$_CharacterLocation) then) =
      __$$_CharacterLocationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class __$$_CharacterLocationCopyWithImpl<$Res>
    extends _$CharacterLocationCopyWithImpl<$Res, _$_CharacterLocation>
    implements _$$_CharacterLocationCopyWith<$Res> {
  __$$_CharacterLocationCopyWithImpl(
      _$_CharacterLocation _value, $Res Function(_$_CharacterLocation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_$_CharacterLocation(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CharacterLocation extends _CharacterLocation {
  const _$_CharacterLocation({this.name = '', this.url = ''}) : super._();

  factory _$_CharacterLocation.fromJson(Map<String, dynamic> json) =>
      _$$_CharacterLocationFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String url;

  @override
  String toString() {
    return 'CharacterLocation(name: $name, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CharacterLocation &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CharacterLocationCopyWith<_$_CharacterLocation> get copyWith =>
      __$$_CharacterLocationCopyWithImpl<_$_CharacterLocation>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CharacterLocationToJson(
      this,
    );
  }
}

abstract class _CharacterLocation extends CharacterLocation {
  const factory _CharacterLocation({final String name, final String url}) =
      _$_CharacterLocation;
  const _CharacterLocation._() : super._();

  factory _CharacterLocation.fromJson(Map<String, dynamic> json) =
      _$_CharacterLocation.fromJson;

  @override
  String get name;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$_CharacterLocationCopyWith<_$_CharacterLocation> get copyWith =>
      throw _privateConstructorUsedError;
}
