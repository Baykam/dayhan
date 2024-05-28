// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_key.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Verifykey _$VerifykeyFromJson(Map<String, dynamic> json) {
  return _Verifykey.fromJson(json);
}

/// @nodoc
mixin _$Verifykey {
  String? get user_id => throw _privateConstructorUsedError;
  String? get verify_key => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerifykeyCopyWith<Verifykey> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifykeyCopyWith<$Res> {
  factory $VerifykeyCopyWith(Verifykey value, $Res Function(Verifykey) then) =
      _$VerifykeyCopyWithImpl<$Res, Verifykey>;
  @useResult
  $Res call({String? user_id, String? verify_key});
}

/// @nodoc
class _$VerifykeyCopyWithImpl<$Res, $Val extends Verifykey>
    implements $VerifykeyCopyWith<$Res> {
  _$VerifykeyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user_id = freezed,
    Object? verify_key = freezed,
  }) {
    return _then(_value.copyWith(
      user_id: freezed == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as String?,
      verify_key: freezed == verify_key
          ? _value.verify_key
          : verify_key // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VerifykeyImplCopyWith<$Res>
    implements $VerifykeyCopyWith<$Res> {
  factory _$$VerifykeyImplCopyWith(
          _$VerifykeyImpl value, $Res Function(_$VerifykeyImpl) then) =
      __$$VerifykeyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? user_id, String? verify_key});
}

/// @nodoc
class __$$VerifykeyImplCopyWithImpl<$Res>
    extends _$VerifykeyCopyWithImpl<$Res, _$VerifykeyImpl>
    implements _$$VerifykeyImplCopyWith<$Res> {
  __$$VerifykeyImplCopyWithImpl(
      _$VerifykeyImpl _value, $Res Function(_$VerifykeyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user_id = freezed,
    Object? verify_key = freezed,
  }) {
    return _then(_$VerifykeyImpl(
      user_id: freezed == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as String?,
      verify_key: freezed == verify_key
          ? _value.verify_key
          : verify_key // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VerifykeyImpl implements _Verifykey {
  const _$VerifykeyImpl({this.user_id, this.verify_key});

  factory _$VerifykeyImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerifykeyImplFromJson(json);

  @override
  final String? user_id;
  @override
  final String? verify_key;

  @override
  String toString() {
    return 'Verifykey(user_id: $user_id, verify_key: $verify_key)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifykeyImpl &&
            (identical(other.user_id, user_id) || other.user_id == user_id) &&
            (identical(other.verify_key, verify_key) ||
                other.verify_key == verify_key));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, user_id, verify_key);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifykeyImplCopyWith<_$VerifykeyImpl> get copyWith =>
      __$$VerifykeyImplCopyWithImpl<_$VerifykeyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerifykeyImplToJson(
      this,
    );
  }
}

abstract class _Verifykey implements Verifykey {
  const factory _Verifykey({final String? user_id, final String? verify_key}) =
      _$VerifykeyImpl;

  factory _Verifykey.fromJson(Map<String, dynamic> json) =
      _$VerifykeyImpl.fromJson;

  @override
  String? get user_id;
  @override
  String? get verify_key;
  @override
  @JsonKey(ignore: true)
  _$$VerifykeyImplCopyWith<_$VerifykeyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
