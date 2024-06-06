// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'file_send.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FileSend _$FileSendFromJson(Map<String, dynamic> json) {
  return _FileSend.fromJson(json);
}

/// @nodoc
mixin _$FileSend {
  String? get name => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FileSendCopyWith<FileSend> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileSendCopyWith<$Res> {
  factory $FileSendCopyWith(FileSend value, $Res Function(FileSend) then) =
      _$FileSendCopyWithImpl<$Res, FileSend>;
  @useResult
  $Res call({String? name, String? url});
}

/// @nodoc
class _$FileSendCopyWithImpl<$Res, $Val extends FileSend>
    implements $FileSendCopyWith<$Res> {
  _$FileSendCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FileSendImplCopyWith<$Res>
    implements $FileSendCopyWith<$Res> {
  factory _$$FileSendImplCopyWith(
          _$FileSendImpl value, $Res Function(_$FileSendImpl) then) =
      __$$FileSendImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? url});
}

/// @nodoc
class __$$FileSendImplCopyWithImpl<$Res>
    extends _$FileSendCopyWithImpl<$Res, _$FileSendImpl>
    implements _$$FileSendImplCopyWith<$Res> {
  __$$FileSendImplCopyWithImpl(
      _$FileSendImpl _value, $Res Function(_$FileSendImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_$FileSendImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FileSendImpl implements _FileSend {
  const _$FileSendImpl({this.name, this.url});

  factory _$FileSendImpl.fromJson(Map<String, dynamic> json) =>
      _$$FileSendImplFromJson(json);

  @override
  final String? name;
  @override
  final String? url;

  @override
  String toString() {
    return 'FileSend(name: $name, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FileSendImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FileSendImplCopyWith<_$FileSendImpl> get copyWith =>
      __$$FileSendImplCopyWithImpl<_$FileSendImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FileSendImplToJson(
      this,
    );
  }
}

abstract class _FileSend implements FileSend {
  const factory _FileSend({final String? name, final String? url}) =
      _$FileSendImpl;

  factory _FileSend.fromJson(Map<String, dynamic> json) =
      _$FileSendImpl.fromJson;

  @override
  String? get name;
  @override
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$FileSendImplCopyWith<_$FileSendImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
