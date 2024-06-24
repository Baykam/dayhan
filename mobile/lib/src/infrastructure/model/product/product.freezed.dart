// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  @HiveField(0)
  int? get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get title => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get description => throw _privateConstructorUsedError;
  @HiveField(3)
  int? get category_id => throw _privateConstructorUsedError;
  @HiveField(4)
  double? get price => throw _privateConstructorUsedError;
  @HiveField(5)
  String? get name => throw _privateConstructorUsedError;
  @HiveField(6)
  int? get min_order_quantity => throw _privateConstructorUsedError;
  @HiveField(7)
  double? get rate => throw _privateConstructorUsedError;
  @HiveField(8)
  List<FileSend>? get images => throw _privateConstructorUsedError;
  @HiveField(9)
  List<FileSend>? get videos => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call(
      {@HiveField(0) int? id,
      @HiveField(1) String? title,
      @HiveField(2) String? description,
      @HiveField(3) int? category_id,
      @HiveField(4) double? price,
      @HiveField(5) String? name,
      @HiveField(6) int? min_order_quantity,
      @HiveField(7) double? rate,
      @HiveField(8) List<FileSend>? images,
      @HiveField(9) List<FileSend>? videos});
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? category_id = freezed,
    Object? price = freezed,
    Object? name = freezed,
    Object? min_order_quantity = freezed,
    Object? rate = freezed,
    Object? images = freezed,
    Object? videos = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      category_id: freezed == category_id
          ? _value.category_id
          : category_id // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      min_order_quantity: freezed == min_order_quantity
          ? _value.min_order_quantity
          : min_order_quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      rate: freezed == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<FileSend>?,
      videos: freezed == videos
          ? _value.videos
          : videos // ignore: cast_nullable_to_non_nullable
              as List<FileSend>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductImplCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$ProductImplCopyWith(
          _$ProductImpl value, $Res Function(_$ProductImpl) then) =
      __$$ProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int? id,
      @HiveField(1) String? title,
      @HiveField(2) String? description,
      @HiveField(3) int? category_id,
      @HiveField(4) double? price,
      @HiveField(5) String? name,
      @HiveField(6) int? min_order_quantity,
      @HiveField(7) double? rate,
      @HiveField(8) List<FileSend>? images,
      @HiveField(9) List<FileSend>? videos});
}

/// @nodoc
class __$$ProductImplCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$ProductImpl>
    implements _$$ProductImplCopyWith<$Res> {
  __$$ProductImplCopyWithImpl(
      _$ProductImpl _value, $Res Function(_$ProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? category_id = freezed,
    Object? price = freezed,
    Object? name = freezed,
    Object? min_order_quantity = freezed,
    Object? rate = freezed,
    Object? images = freezed,
    Object? videos = freezed,
  }) {
    return _then(_$ProductImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      category_id: freezed == category_id
          ? _value.category_id
          : category_id // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      min_order_quantity: freezed == min_order_quantity
          ? _value.min_order_quantity
          : min_order_quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      rate: freezed == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<FileSend>?,
      videos: freezed == videos
          ? _value._videos
          : videos // ignore: cast_nullable_to_non_nullable
              as List<FileSend>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductImpl implements _Product {
  const _$ProductImpl(
      {@HiveField(0) this.id,
      @HiveField(1) this.title,
      @HiveField(2) this.description,
      @HiveField(3) this.category_id,
      @HiveField(4) this.price,
      @HiveField(5) this.name,
      @HiveField(6) this.min_order_quantity,
      @HiveField(7) this.rate,
      @HiveField(8) final List<FileSend>? images,
      @HiveField(9) final List<FileSend>? videos})
      : _images = images,
        _videos = videos;

  factory _$ProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductImplFromJson(json);

  @override
  @HiveField(0)
  final int? id;
  @override
  @HiveField(1)
  final String? title;
  @override
  @HiveField(2)
  final String? description;
  @override
  @HiveField(3)
  final int? category_id;
  @override
  @HiveField(4)
  final double? price;
  @override
  @HiveField(5)
  final String? name;
  @override
  @HiveField(6)
  final int? min_order_quantity;
  @override
  @HiveField(7)
  final double? rate;
  final List<FileSend>? _images;
  @override
  @HiveField(8)
  List<FileSend>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<FileSend>? _videos;
  @override
  @HiveField(9)
  List<FileSend>? get videos {
    final value = _videos;
    if (value == null) return null;
    if (_videos is EqualUnmodifiableListView) return _videos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Product(id: $id, title: $title, description: $description, category_id: $category_id, price: $price, name: $name, min_order_quantity: $min_order_quantity, rate: $rate, images: $images, videos: $videos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.category_id, category_id) ||
                other.category_id == category_id) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.min_order_quantity, min_order_quantity) ||
                other.min_order_quantity == min_order_quantity) &&
            (identical(other.rate, rate) || other.rate == rate) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality().equals(other._videos, _videos));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      description,
      category_id,
      price,
      name,
      min_order_quantity,
      rate,
      const DeepCollectionEquality().hash(_images),
      const DeepCollectionEquality().hash(_videos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      __$$ProductImplCopyWithImpl<_$ProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductImplToJson(
      this,
    );
  }
}

abstract class _Product implements Product {
  const factory _Product(
      {@HiveField(0) final int? id,
      @HiveField(1) final String? title,
      @HiveField(2) final String? description,
      @HiveField(3) final int? category_id,
      @HiveField(4) final double? price,
      @HiveField(5) final String? name,
      @HiveField(6) final int? min_order_quantity,
      @HiveField(7) final double? rate,
      @HiveField(8) final List<FileSend>? images,
      @HiveField(9) final List<FileSend>? videos}) = _$ProductImpl;

  factory _Product.fromJson(Map<String, dynamic> json) = _$ProductImpl.fromJson;

  @override
  @HiveField(0)
  int? get id;
  @override
  @HiveField(1)
  String? get title;
  @override
  @HiveField(2)
  String? get description;
  @override
  @HiveField(3)
  int? get category_id;
  @override
  @HiveField(4)
  double? get price;
  @override
  @HiveField(5)
  String? get name;
  @override
  @HiveField(6)
  int? get min_order_quantity;
  @override
  @HiveField(7)
  double? get rate;
  @override
  @HiveField(8)
  List<FileSend>? get images;
  @override
  @HiveField(9)
  List<FileSend>? get videos;
  @override
  @JsonKey(ignore: true)
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
