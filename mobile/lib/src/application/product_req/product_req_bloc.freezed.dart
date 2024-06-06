// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_req_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductReqEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) name,
    required TResult Function(String description) description,
    required TResult Function(double price) price,
    required TResult Function(List<FileSend> images) images,
    required TResult Function(List<FileSend> videos) videos,
    required TResult Function(int id) id,
    required TResult Function(String title) title,
    required TResult Function(int categoryId) categoryId,
    required TResult Function(int order) orderQuantity,
    required TResult Function(double rate) rate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? name,
    TResult? Function(String description)? description,
    TResult? Function(double price)? price,
    TResult? Function(List<FileSend> images)? images,
    TResult? Function(List<FileSend> videos)? videos,
    TResult? Function(int id)? id,
    TResult? Function(String title)? title,
    TResult? Function(int categoryId)? categoryId,
    TResult? Function(int order)? orderQuantity,
    TResult? Function(double rate)? rate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? name,
    TResult Function(String description)? description,
    TResult Function(double price)? price,
    TResult Function(List<FileSend> images)? images,
    TResult Function(List<FileSend> videos)? videos,
    TResult Function(int id)? id,
    TResult Function(String title)? title,
    TResult Function(int categoryId)? categoryId,
    TResult Function(int order)? orderQuantity,
    TResult Function(double rate)? rate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Name value) name,
    required TResult Function(_Description value) description,
    required TResult Function(_Price value) price,
    required TResult Function(_Images value) images,
    required TResult Function(_Videos value) videos,
    required TResult Function(_ID value) id,
    required TResult Function(_Title value) title,
    required TResult Function(_CategoryId value) categoryId,
    required TResult Function(_OrderQuantity value) orderQuantity,
    required TResult Function(_Rate value) rate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Name value)? name,
    TResult? Function(_Description value)? description,
    TResult? Function(_Price value)? price,
    TResult? Function(_Images value)? images,
    TResult? Function(_Videos value)? videos,
    TResult? Function(_ID value)? id,
    TResult? Function(_Title value)? title,
    TResult? Function(_CategoryId value)? categoryId,
    TResult? Function(_OrderQuantity value)? orderQuantity,
    TResult? Function(_Rate value)? rate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Name value)? name,
    TResult Function(_Description value)? description,
    TResult Function(_Price value)? price,
    TResult Function(_Images value)? images,
    TResult Function(_Videos value)? videos,
    TResult Function(_ID value)? id,
    TResult Function(_Title value)? title,
    TResult Function(_CategoryId value)? categoryId,
    TResult Function(_OrderQuantity value)? orderQuantity,
    TResult Function(_Rate value)? rate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductReqEventCopyWith<$Res> {
  factory $ProductReqEventCopyWith(
          ProductReqEvent value, $Res Function(ProductReqEvent) then) =
      _$ProductReqEventCopyWithImpl<$Res, ProductReqEvent>;
}

/// @nodoc
class _$ProductReqEventCopyWithImpl<$Res, $Val extends ProductReqEvent>
    implements $ProductReqEventCopyWith<$Res> {
  _$ProductReqEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NameImplCopyWith<$Res> {
  factory _$$NameImplCopyWith(
          _$NameImpl value, $Res Function(_$NameImpl) then) =
      __$$NameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$NameImplCopyWithImpl<$Res>
    extends _$ProductReqEventCopyWithImpl<$Res, _$NameImpl>
    implements _$$NameImplCopyWith<$Res> {
  __$$NameImplCopyWithImpl(_$NameImpl _value, $Res Function(_$NameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$NameImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NameImpl implements _Name {
  const _$NameImpl({required this.name});

  @override
  final String name;

  @override
  String toString() {
    return 'ProductReqEvent.name(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NameImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NameImplCopyWith<_$NameImpl> get copyWith =>
      __$$NameImplCopyWithImpl<_$NameImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) name,
    required TResult Function(String description) description,
    required TResult Function(double price) price,
    required TResult Function(List<FileSend> images) images,
    required TResult Function(List<FileSend> videos) videos,
    required TResult Function(int id) id,
    required TResult Function(String title) title,
    required TResult Function(int categoryId) categoryId,
    required TResult Function(int order) orderQuantity,
    required TResult Function(double rate) rate,
  }) {
    return name(this.name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? name,
    TResult? Function(String description)? description,
    TResult? Function(double price)? price,
    TResult? Function(List<FileSend> images)? images,
    TResult? Function(List<FileSend> videos)? videos,
    TResult? Function(int id)? id,
    TResult? Function(String title)? title,
    TResult? Function(int categoryId)? categoryId,
    TResult? Function(int order)? orderQuantity,
    TResult? Function(double rate)? rate,
  }) {
    return name?.call(this.name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? name,
    TResult Function(String description)? description,
    TResult Function(double price)? price,
    TResult Function(List<FileSend> images)? images,
    TResult Function(List<FileSend> videos)? videos,
    TResult Function(int id)? id,
    TResult Function(String title)? title,
    TResult Function(int categoryId)? categoryId,
    TResult Function(int order)? orderQuantity,
    TResult Function(double rate)? rate,
    required TResult orElse(),
  }) {
    if (name != null) {
      return name(this.name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Name value) name,
    required TResult Function(_Description value) description,
    required TResult Function(_Price value) price,
    required TResult Function(_Images value) images,
    required TResult Function(_Videos value) videos,
    required TResult Function(_ID value) id,
    required TResult Function(_Title value) title,
    required TResult Function(_CategoryId value) categoryId,
    required TResult Function(_OrderQuantity value) orderQuantity,
    required TResult Function(_Rate value) rate,
  }) {
    return name(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Name value)? name,
    TResult? Function(_Description value)? description,
    TResult? Function(_Price value)? price,
    TResult? Function(_Images value)? images,
    TResult? Function(_Videos value)? videos,
    TResult? Function(_ID value)? id,
    TResult? Function(_Title value)? title,
    TResult? Function(_CategoryId value)? categoryId,
    TResult? Function(_OrderQuantity value)? orderQuantity,
    TResult? Function(_Rate value)? rate,
  }) {
    return name?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Name value)? name,
    TResult Function(_Description value)? description,
    TResult Function(_Price value)? price,
    TResult Function(_Images value)? images,
    TResult Function(_Videos value)? videos,
    TResult Function(_ID value)? id,
    TResult Function(_Title value)? title,
    TResult Function(_CategoryId value)? categoryId,
    TResult Function(_OrderQuantity value)? orderQuantity,
    TResult Function(_Rate value)? rate,
    required TResult orElse(),
  }) {
    if (name != null) {
      return name(this);
    }
    return orElse();
  }
}

abstract class _Name implements ProductReqEvent {
  const factory _Name({required final String name}) = _$NameImpl;

  String get name;
  @JsonKey(ignore: true)
  _$$NameImplCopyWith<_$NameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DescriptionImplCopyWith<$Res> {
  factory _$$DescriptionImplCopyWith(
          _$DescriptionImpl value, $Res Function(_$DescriptionImpl) then) =
      __$$DescriptionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String description});
}

/// @nodoc
class __$$DescriptionImplCopyWithImpl<$Res>
    extends _$ProductReqEventCopyWithImpl<$Res, _$DescriptionImpl>
    implements _$$DescriptionImplCopyWith<$Res> {
  __$$DescriptionImplCopyWithImpl(
      _$DescriptionImpl _value, $Res Function(_$DescriptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
  }) {
    return _then(_$DescriptionImpl(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DescriptionImpl implements _Description {
  const _$DescriptionImpl({required this.description});

  @override
  final String description;

  @override
  String toString() {
    return 'ProductReqEvent.description(description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DescriptionImpl &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DescriptionImplCopyWith<_$DescriptionImpl> get copyWith =>
      __$$DescriptionImplCopyWithImpl<_$DescriptionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) name,
    required TResult Function(String description) description,
    required TResult Function(double price) price,
    required TResult Function(List<FileSend> images) images,
    required TResult Function(List<FileSend> videos) videos,
    required TResult Function(int id) id,
    required TResult Function(String title) title,
    required TResult Function(int categoryId) categoryId,
    required TResult Function(int order) orderQuantity,
    required TResult Function(double rate) rate,
  }) {
    return description(this.description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? name,
    TResult? Function(String description)? description,
    TResult? Function(double price)? price,
    TResult? Function(List<FileSend> images)? images,
    TResult? Function(List<FileSend> videos)? videos,
    TResult? Function(int id)? id,
    TResult? Function(String title)? title,
    TResult? Function(int categoryId)? categoryId,
    TResult? Function(int order)? orderQuantity,
    TResult? Function(double rate)? rate,
  }) {
    return description?.call(this.description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? name,
    TResult Function(String description)? description,
    TResult Function(double price)? price,
    TResult Function(List<FileSend> images)? images,
    TResult Function(List<FileSend> videos)? videos,
    TResult Function(int id)? id,
    TResult Function(String title)? title,
    TResult Function(int categoryId)? categoryId,
    TResult Function(int order)? orderQuantity,
    TResult Function(double rate)? rate,
    required TResult orElse(),
  }) {
    if (description != null) {
      return description(this.description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Name value) name,
    required TResult Function(_Description value) description,
    required TResult Function(_Price value) price,
    required TResult Function(_Images value) images,
    required TResult Function(_Videos value) videos,
    required TResult Function(_ID value) id,
    required TResult Function(_Title value) title,
    required TResult Function(_CategoryId value) categoryId,
    required TResult Function(_OrderQuantity value) orderQuantity,
    required TResult Function(_Rate value) rate,
  }) {
    return description(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Name value)? name,
    TResult? Function(_Description value)? description,
    TResult? Function(_Price value)? price,
    TResult? Function(_Images value)? images,
    TResult? Function(_Videos value)? videos,
    TResult? Function(_ID value)? id,
    TResult? Function(_Title value)? title,
    TResult? Function(_CategoryId value)? categoryId,
    TResult? Function(_OrderQuantity value)? orderQuantity,
    TResult? Function(_Rate value)? rate,
  }) {
    return description?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Name value)? name,
    TResult Function(_Description value)? description,
    TResult Function(_Price value)? price,
    TResult Function(_Images value)? images,
    TResult Function(_Videos value)? videos,
    TResult Function(_ID value)? id,
    TResult Function(_Title value)? title,
    TResult Function(_CategoryId value)? categoryId,
    TResult Function(_OrderQuantity value)? orderQuantity,
    TResult Function(_Rate value)? rate,
    required TResult orElse(),
  }) {
    if (description != null) {
      return description(this);
    }
    return orElse();
  }
}

abstract class _Description implements ProductReqEvent {
  const factory _Description({required final String description}) =
      _$DescriptionImpl;

  String get description;
  @JsonKey(ignore: true)
  _$$DescriptionImplCopyWith<_$DescriptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PriceImplCopyWith<$Res> {
  factory _$$PriceImplCopyWith(
          _$PriceImpl value, $Res Function(_$PriceImpl) then) =
      __$$PriceImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double price});
}

/// @nodoc
class __$$PriceImplCopyWithImpl<$Res>
    extends _$ProductReqEventCopyWithImpl<$Res, _$PriceImpl>
    implements _$$PriceImplCopyWith<$Res> {
  __$$PriceImplCopyWithImpl(
      _$PriceImpl _value, $Res Function(_$PriceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
  }) {
    return _then(_$PriceImpl(
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$PriceImpl implements _Price {
  const _$PriceImpl({required this.price});

  @override
  final double price;

  @override
  String toString() {
    return 'ProductReqEvent.price(price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PriceImpl &&
            (identical(other.price, price) || other.price == price));
  }

  @override
  int get hashCode => Object.hash(runtimeType, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PriceImplCopyWith<_$PriceImpl> get copyWith =>
      __$$PriceImplCopyWithImpl<_$PriceImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) name,
    required TResult Function(String description) description,
    required TResult Function(double price) price,
    required TResult Function(List<FileSend> images) images,
    required TResult Function(List<FileSend> videos) videos,
    required TResult Function(int id) id,
    required TResult Function(String title) title,
    required TResult Function(int categoryId) categoryId,
    required TResult Function(int order) orderQuantity,
    required TResult Function(double rate) rate,
  }) {
    return price(this.price);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? name,
    TResult? Function(String description)? description,
    TResult? Function(double price)? price,
    TResult? Function(List<FileSend> images)? images,
    TResult? Function(List<FileSend> videos)? videos,
    TResult? Function(int id)? id,
    TResult? Function(String title)? title,
    TResult? Function(int categoryId)? categoryId,
    TResult? Function(int order)? orderQuantity,
    TResult? Function(double rate)? rate,
  }) {
    return price?.call(this.price);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? name,
    TResult Function(String description)? description,
    TResult Function(double price)? price,
    TResult Function(List<FileSend> images)? images,
    TResult Function(List<FileSend> videos)? videos,
    TResult Function(int id)? id,
    TResult Function(String title)? title,
    TResult Function(int categoryId)? categoryId,
    TResult Function(int order)? orderQuantity,
    TResult Function(double rate)? rate,
    required TResult orElse(),
  }) {
    if (price != null) {
      return price(this.price);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Name value) name,
    required TResult Function(_Description value) description,
    required TResult Function(_Price value) price,
    required TResult Function(_Images value) images,
    required TResult Function(_Videos value) videos,
    required TResult Function(_ID value) id,
    required TResult Function(_Title value) title,
    required TResult Function(_CategoryId value) categoryId,
    required TResult Function(_OrderQuantity value) orderQuantity,
    required TResult Function(_Rate value) rate,
  }) {
    return price(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Name value)? name,
    TResult? Function(_Description value)? description,
    TResult? Function(_Price value)? price,
    TResult? Function(_Images value)? images,
    TResult? Function(_Videos value)? videos,
    TResult? Function(_ID value)? id,
    TResult? Function(_Title value)? title,
    TResult? Function(_CategoryId value)? categoryId,
    TResult? Function(_OrderQuantity value)? orderQuantity,
    TResult? Function(_Rate value)? rate,
  }) {
    return price?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Name value)? name,
    TResult Function(_Description value)? description,
    TResult Function(_Price value)? price,
    TResult Function(_Images value)? images,
    TResult Function(_Videos value)? videos,
    TResult Function(_ID value)? id,
    TResult Function(_Title value)? title,
    TResult Function(_CategoryId value)? categoryId,
    TResult Function(_OrderQuantity value)? orderQuantity,
    TResult Function(_Rate value)? rate,
    required TResult orElse(),
  }) {
    if (price != null) {
      return price(this);
    }
    return orElse();
  }
}

abstract class _Price implements ProductReqEvent {
  const factory _Price({required final double price}) = _$PriceImpl;

  double get price;
  @JsonKey(ignore: true)
  _$$PriceImplCopyWith<_$PriceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ImagesImplCopyWith<$Res> {
  factory _$$ImagesImplCopyWith(
          _$ImagesImpl value, $Res Function(_$ImagesImpl) then) =
      __$$ImagesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<FileSend> images});
}

/// @nodoc
class __$$ImagesImplCopyWithImpl<$Res>
    extends _$ProductReqEventCopyWithImpl<$Res, _$ImagesImpl>
    implements _$$ImagesImplCopyWith<$Res> {
  __$$ImagesImplCopyWithImpl(
      _$ImagesImpl _value, $Res Function(_$ImagesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? images = null,
  }) {
    return _then(_$ImagesImpl(
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<FileSend>,
    ));
  }
}

/// @nodoc

class _$ImagesImpl implements _Images {
  const _$ImagesImpl({required final List<FileSend> images}) : _images = images;

  final List<FileSend> _images;
  @override
  List<FileSend> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString() {
    return 'ProductReqEvent.images(images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImagesImpl &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_images));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImagesImplCopyWith<_$ImagesImpl> get copyWith =>
      __$$ImagesImplCopyWithImpl<_$ImagesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) name,
    required TResult Function(String description) description,
    required TResult Function(double price) price,
    required TResult Function(List<FileSend> images) images,
    required TResult Function(List<FileSend> videos) videos,
    required TResult Function(int id) id,
    required TResult Function(String title) title,
    required TResult Function(int categoryId) categoryId,
    required TResult Function(int order) orderQuantity,
    required TResult Function(double rate) rate,
  }) {
    return images(this.images);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? name,
    TResult? Function(String description)? description,
    TResult? Function(double price)? price,
    TResult? Function(List<FileSend> images)? images,
    TResult? Function(List<FileSend> videos)? videos,
    TResult? Function(int id)? id,
    TResult? Function(String title)? title,
    TResult? Function(int categoryId)? categoryId,
    TResult? Function(int order)? orderQuantity,
    TResult? Function(double rate)? rate,
  }) {
    return images?.call(this.images);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? name,
    TResult Function(String description)? description,
    TResult Function(double price)? price,
    TResult Function(List<FileSend> images)? images,
    TResult Function(List<FileSend> videos)? videos,
    TResult Function(int id)? id,
    TResult Function(String title)? title,
    TResult Function(int categoryId)? categoryId,
    TResult Function(int order)? orderQuantity,
    TResult Function(double rate)? rate,
    required TResult orElse(),
  }) {
    if (images != null) {
      return images(this.images);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Name value) name,
    required TResult Function(_Description value) description,
    required TResult Function(_Price value) price,
    required TResult Function(_Images value) images,
    required TResult Function(_Videos value) videos,
    required TResult Function(_ID value) id,
    required TResult Function(_Title value) title,
    required TResult Function(_CategoryId value) categoryId,
    required TResult Function(_OrderQuantity value) orderQuantity,
    required TResult Function(_Rate value) rate,
  }) {
    return images(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Name value)? name,
    TResult? Function(_Description value)? description,
    TResult? Function(_Price value)? price,
    TResult? Function(_Images value)? images,
    TResult? Function(_Videos value)? videos,
    TResult? Function(_ID value)? id,
    TResult? Function(_Title value)? title,
    TResult? Function(_CategoryId value)? categoryId,
    TResult? Function(_OrderQuantity value)? orderQuantity,
    TResult? Function(_Rate value)? rate,
  }) {
    return images?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Name value)? name,
    TResult Function(_Description value)? description,
    TResult Function(_Price value)? price,
    TResult Function(_Images value)? images,
    TResult Function(_Videos value)? videos,
    TResult Function(_ID value)? id,
    TResult Function(_Title value)? title,
    TResult Function(_CategoryId value)? categoryId,
    TResult Function(_OrderQuantity value)? orderQuantity,
    TResult Function(_Rate value)? rate,
    required TResult orElse(),
  }) {
    if (images != null) {
      return images(this);
    }
    return orElse();
  }
}

abstract class _Images implements ProductReqEvent {
  const factory _Images({required final List<FileSend> images}) = _$ImagesImpl;

  List<FileSend> get images;
  @JsonKey(ignore: true)
  _$$ImagesImplCopyWith<_$ImagesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VideosImplCopyWith<$Res> {
  factory _$$VideosImplCopyWith(
          _$VideosImpl value, $Res Function(_$VideosImpl) then) =
      __$$VideosImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<FileSend> videos});
}

/// @nodoc
class __$$VideosImplCopyWithImpl<$Res>
    extends _$ProductReqEventCopyWithImpl<$Res, _$VideosImpl>
    implements _$$VideosImplCopyWith<$Res> {
  __$$VideosImplCopyWithImpl(
      _$VideosImpl _value, $Res Function(_$VideosImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videos = null,
  }) {
    return _then(_$VideosImpl(
      videos: null == videos
          ? _value._videos
          : videos // ignore: cast_nullable_to_non_nullable
              as List<FileSend>,
    ));
  }
}

/// @nodoc

class _$VideosImpl implements _Videos {
  const _$VideosImpl({required final List<FileSend> videos}) : _videos = videos;

  final List<FileSend> _videos;
  @override
  List<FileSend> get videos {
    if (_videos is EqualUnmodifiableListView) return _videos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_videos);
  }

  @override
  String toString() {
    return 'ProductReqEvent.videos(videos: $videos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideosImpl &&
            const DeepCollectionEquality().equals(other._videos, _videos));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_videos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VideosImplCopyWith<_$VideosImpl> get copyWith =>
      __$$VideosImplCopyWithImpl<_$VideosImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) name,
    required TResult Function(String description) description,
    required TResult Function(double price) price,
    required TResult Function(List<FileSend> images) images,
    required TResult Function(List<FileSend> videos) videos,
    required TResult Function(int id) id,
    required TResult Function(String title) title,
    required TResult Function(int categoryId) categoryId,
    required TResult Function(int order) orderQuantity,
    required TResult Function(double rate) rate,
  }) {
    return videos(this.videos);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? name,
    TResult? Function(String description)? description,
    TResult? Function(double price)? price,
    TResult? Function(List<FileSend> images)? images,
    TResult? Function(List<FileSend> videos)? videos,
    TResult? Function(int id)? id,
    TResult? Function(String title)? title,
    TResult? Function(int categoryId)? categoryId,
    TResult? Function(int order)? orderQuantity,
    TResult? Function(double rate)? rate,
  }) {
    return videos?.call(this.videos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? name,
    TResult Function(String description)? description,
    TResult Function(double price)? price,
    TResult Function(List<FileSend> images)? images,
    TResult Function(List<FileSend> videos)? videos,
    TResult Function(int id)? id,
    TResult Function(String title)? title,
    TResult Function(int categoryId)? categoryId,
    TResult Function(int order)? orderQuantity,
    TResult Function(double rate)? rate,
    required TResult orElse(),
  }) {
    if (videos != null) {
      return videos(this.videos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Name value) name,
    required TResult Function(_Description value) description,
    required TResult Function(_Price value) price,
    required TResult Function(_Images value) images,
    required TResult Function(_Videos value) videos,
    required TResult Function(_ID value) id,
    required TResult Function(_Title value) title,
    required TResult Function(_CategoryId value) categoryId,
    required TResult Function(_OrderQuantity value) orderQuantity,
    required TResult Function(_Rate value) rate,
  }) {
    return videos(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Name value)? name,
    TResult? Function(_Description value)? description,
    TResult? Function(_Price value)? price,
    TResult? Function(_Images value)? images,
    TResult? Function(_Videos value)? videos,
    TResult? Function(_ID value)? id,
    TResult? Function(_Title value)? title,
    TResult? Function(_CategoryId value)? categoryId,
    TResult? Function(_OrderQuantity value)? orderQuantity,
    TResult? Function(_Rate value)? rate,
  }) {
    return videos?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Name value)? name,
    TResult Function(_Description value)? description,
    TResult Function(_Price value)? price,
    TResult Function(_Images value)? images,
    TResult Function(_Videos value)? videos,
    TResult Function(_ID value)? id,
    TResult Function(_Title value)? title,
    TResult Function(_CategoryId value)? categoryId,
    TResult Function(_OrderQuantity value)? orderQuantity,
    TResult Function(_Rate value)? rate,
    required TResult orElse(),
  }) {
    if (videos != null) {
      return videos(this);
    }
    return orElse();
  }
}

abstract class _Videos implements ProductReqEvent {
  const factory _Videos({required final List<FileSend> videos}) = _$VideosImpl;

  List<FileSend> get videos;
  @JsonKey(ignore: true)
  _$$VideosImplCopyWith<_$VideosImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IDImplCopyWith<$Res> {
  factory _$$IDImplCopyWith(_$IDImpl value, $Res Function(_$IDImpl) then) =
      __$$IDImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$IDImplCopyWithImpl<$Res>
    extends _$ProductReqEventCopyWithImpl<$Res, _$IDImpl>
    implements _$$IDImplCopyWith<$Res> {
  __$$IDImplCopyWithImpl(_$IDImpl _value, $Res Function(_$IDImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$IDImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$IDImpl implements _ID {
  const _$IDImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'ProductReqEvent.id(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IDImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IDImplCopyWith<_$IDImpl> get copyWith =>
      __$$IDImplCopyWithImpl<_$IDImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) name,
    required TResult Function(String description) description,
    required TResult Function(double price) price,
    required TResult Function(List<FileSend> images) images,
    required TResult Function(List<FileSend> videos) videos,
    required TResult Function(int id) id,
    required TResult Function(String title) title,
    required TResult Function(int categoryId) categoryId,
    required TResult Function(int order) orderQuantity,
    required TResult Function(double rate) rate,
  }) {
    return id(this.id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? name,
    TResult? Function(String description)? description,
    TResult? Function(double price)? price,
    TResult? Function(List<FileSend> images)? images,
    TResult? Function(List<FileSend> videos)? videos,
    TResult? Function(int id)? id,
    TResult? Function(String title)? title,
    TResult? Function(int categoryId)? categoryId,
    TResult? Function(int order)? orderQuantity,
    TResult? Function(double rate)? rate,
  }) {
    return id?.call(this.id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? name,
    TResult Function(String description)? description,
    TResult Function(double price)? price,
    TResult Function(List<FileSend> images)? images,
    TResult Function(List<FileSend> videos)? videos,
    TResult Function(int id)? id,
    TResult Function(String title)? title,
    TResult Function(int categoryId)? categoryId,
    TResult Function(int order)? orderQuantity,
    TResult Function(double rate)? rate,
    required TResult orElse(),
  }) {
    if (id != null) {
      return id(this.id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Name value) name,
    required TResult Function(_Description value) description,
    required TResult Function(_Price value) price,
    required TResult Function(_Images value) images,
    required TResult Function(_Videos value) videos,
    required TResult Function(_ID value) id,
    required TResult Function(_Title value) title,
    required TResult Function(_CategoryId value) categoryId,
    required TResult Function(_OrderQuantity value) orderQuantity,
    required TResult Function(_Rate value) rate,
  }) {
    return id(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Name value)? name,
    TResult? Function(_Description value)? description,
    TResult? Function(_Price value)? price,
    TResult? Function(_Images value)? images,
    TResult? Function(_Videos value)? videos,
    TResult? Function(_ID value)? id,
    TResult? Function(_Title value)? title,
    TResult? Function(_CategoryId value)? categoryId,
    TResult? Function(_OrderQuantity value)? orderQuantity,
    TResult? Function(_Rate value)? rate,
  }) {
    return id?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Name value)? name,
    TResult Function(_Description value)? description,
    TResult Function(_Price value)? price,
    TResult Function(_Images value)? images,
    TResult Function(_Videos value)? videos,
    TResult Function(_ID value)? id,
    TResult Function(_Title value)? title,
    TResult Function(_CategoryId value)? categoryId,
    TResult Function(_OrderQuantity value)? orderQuantity,
    TResult Function(_Rate value)? rate,
    required TResult orElse(),
  }) {
    if (id != null) {
      return id(this);
    }
    return orElse();
  }
}

abstract class _ID implements ProductReqEvent {
  const factory _ID({required final int id}) = _$IDImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$IDImplCopyWith<_$IDImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TitleImplCopyWith<$Res> {
  factory _$$TitleImplCopyWith(
          _$TitleImpl value, $Res Function(_$TitleImpl) then) =
      __$$TitleImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String title});
}

/// @nodoc
class __$$TitleImplCopyWithImpl<$Res>
    extends _$ProductReqEventCopyWithImpl<$Res, _$TitleImpl>
    implements _$$TitleImplCopyWith<$Res> {
  __$$TitleImplCopyWithImpl(
      _$TitleImpl _value, $Res Function(_$TitleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_$TitleImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TitleImpl implements _Title {
  const _$TitleImpl({required this.title});

  @override
  final String title;

  @override
  String toString() {
    return 'ProductReqEvent.title(title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TitleImpl &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TitleImplCopyWith<_$TitleImpl> get copyWith =>
      __$$TitleImplCopyWithImpl<_$TitleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) name,
    required TResult Function(String description) description,
    required TResult Function(double price) price,
    required TResult Function(List<FileSend> images) images,
    required TResult Function(List<FileSend> videos) videos,
    required TResult Function(int id) id,
    required TResult Function(String title) title,
    required TResult Function(int categoryId) categoryId,
    required TResult Function(int order) orderQuantity,
    required TResult Function(double rate) rate,
  }) {
    return title(this.title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? name,
    TResult? Function(String description)? description,
    TResult? Function(double price)? price,
    TResult? Function(List<FileSend> images)? images,
    TResult? Function(List<FileSend> videos)? videos,
    TResult? Function(int id)? id,
    TResult? Function(String title)? title,
    TResult? Function(int categoryId)? categoryId,
    TResult? Function(int order)? orderQuantity,
    TResult? Function(double rate)? rate,
  }) {
    return title?.call(this.title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? name,
    TResult Function(String description)? description,
    TResult Function(double price)? price,
    TResult Function(List<FileSend> images)? images,
    TResult Function(List<FileSend> videos)? videos,
    TResult Function(int id)? id,
    TResult Function(String title)? title,
    TResult Function(int categoryId)? categoryId,
    TResult Function(int order)? orderQuantity,
    TResult Function(double rate)? rate,
    required TResult orElse(),
  }) {
    if (title != null) {
      return title(this.title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Name value) name,
    required TResult Function(_Description value) description,
    required TResult Function(_Price value) price,
    required TResult Function(_Images value) images,
    required TResult Function(_Videos value) videos,
    required TResult Function(_ID value) id,
    required TResult Function(_Title value) title,
    required TResult Function(_CategoryId value) categoryId,
    required TResult Function(_OrderQuantity value) orderQuantity,
    required TResult Function(_Rate value) rate,
  }) {
    return title(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Name value)? name,
    TResult? Function(_Description value)? description,
    TResult? Function(_Price value)? price,
    TResult? Function(_Images value)? images,
    TResult? Function(_Videos value)? videos,
    TResult? Function(_ID value)? id,
    TResult? Function(_Title value)? title,
    TResult? Function(_CategoryId value)? categoryId,
    TResult? Function(_OrderQuantity value)? orderQuantity,
    TResult? Function(_Rate value)? rate,
  }) {
    return title?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Name value)? name,
    TResult Function(_Description value)? description,
    TResult Function(_Price value)? price,
    TResult Function(_Images value)? images,
    TResult Function(_Videos value)? videos,
    TResult Function(_ID value)? id,
    TResult Function(_Title value)? title,
    TResult Function(_CategoryId value)? categoryId,
    TResult Function(_OrderQuantity value)? orderQuantity,
    TResult Function(_Rate value)? rate,
    required TResult orElse(),
  }) {
    if (title != null) {
      return title(this);
    }
    return orElse();
  }
}

abstract class _Title implements ProductReqEvent {
  const factory _Title({required final String title}) = _$TitleImpl;

  String get title;
  @JsonKey(ignore: true)
  _$$TitleImplCopyWith<_$TitleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CategoryIdImplCopyWith<$Res> {
  factory _$$CategoryIdImplCopyWith(
          _$CategoryIdImpl value, $Res Function(_$CategoryIdImpl) then) =
      __$$CategoryIdImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int categoryId});
}

/// @nodoc
class __$$CategoryIdImplCopyWithImpl<$Res>
    extends _$ProductReqEventCopyWithImpl<$Res, _$CategoryIdImpl>
    implements _$$CategoryIdImplCopyWith<$Res> {
  __$$CategoryIdImplCopyWithImpl(
      _$CategoryIdImpl _value, $Res Function(_$CategoryIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = null,
  }) {
    return _then(_$CategoryIdImpl(
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CategoryIdImpl implements _CategoryId {
  const _$CategoryIdImpl({required this.categoryId});

  @override
  final int categoryId;

  @override
  String toString() {
    return 'ProductReqEvent.categoryId(categoryId: $categoryId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryIdImpl &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoryId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryIdImplCopyWith<_$CategoryIdImpl> get copyWith =>
      __$$CategoryIdImplCopyWithImpl<_$CategoryIdImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) name,
    required TResult Function(String description) description,
    required TResult Function(double price) price,
    required TResult Function(List<FileSend> images) images,
    required TResult Function(List<FileSend> videos) videos,
    required TResult Function(int id) id,
    required TResult Function(String title) title,
    required TResult Function(int categoryId) categoryId,
    required TResult Function(int order) orderQuantity,
    required TResult Function(double rate) rate,
  }) {
    return categoryId(this.categoryId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? name,
    TResult? Function(String description)? description,
    TResult? Function(double price)? price,
    TResult? Function(List<FileSend> images)? images,
    TResult? Function(List<FileSend> videos)? videos,
    TResult? Function(int id)? id,
    TResult? Function(String title)? title,
    TResult? Function(int categoryId)? categoryId,
    TResult? Function(int order)? orderQuantity,
    TResult? Function(double rate)? rate,
  }) {
    return categoryId?.call(this.categoryId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? name,
    TResult Function(String description)? description,
    TResult Function(double price)? price,
    TResult Function(List<FileSend> images)? images,
    TResult Function(List<FileSend> videos)? videos,
    TResult Function(int id)? id,
    TResult Function(String title)? title,
    TResult Function(int categoryId)? categoryId,
    TResult Function(int order)? orderQuantity,
    TResult Function(double rate)? rate,
    required TResult orElse(),
  }) {
    if (categoryId != null) {
      return categoryId(this.categoryId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Name value) name,
    required TResult Function(_Description value) description,
    required TResult Function(_Price value) price,
    required TResult Function(_Images value) images,
    required TResult Function(_Videos value) videos,
    required TResult Function(_ID value) id,
    required TResult Function(_Title value) title,
    required TResult Function(_CategoryId value) categoryId,
    required TResult Function(_OrderQuantity value) orderQuantity,
    required TResult Function(_Rate value) rate,
  }) {
    return categoryId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Name value)? name,
    TResult? Function(_Description value)? description,
    TResult? Function(_Price value)? price,
    TResult? Function(_Images value)? images,
    TResult? Function(_Videos value)? videos,
    TResult? Function(_ID value)? id,
    TResult? Function(_Title value)? title,
    TResult? Function(_CategoryId value)? categoryId,
    TResult? Function(_OrderQuantity value)? orderQuantity,
    TResult? Function(_Rate value)? rate,
  }) {
    return categoryId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Name value)? name,
    TResult Function(_Description value)? description,
    TResult Function(_Price value)? price,
    TResult Function(_Images value)? images,
    TResult Function(_Videos value)? videos,
    TResult Function(_ID value)? id,
    TResult Function(_Title value)? title,
    TResult Function(_CategoryId value)? categoryId,
    TResult Function(_OrderQuantity value)? orderQuantity,
    TResult Function(_Rate value)? rate,
    required TResult orElse(),
  }) {
    if (categoryId != null) {
      return categoryId(this);
    }
    return orElse();
  }
}

abstract class _CategoryId implements ProductReqEvent {
  const factory _CategoryId({required final int categoryId}) = _$CategoryIdImpl;

  int get categoryId;
  @JsonKey(ignore: true)
  _$$CategoryIdImplCopyWith<_$CategoryIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OrderQuantityImplCopyWith<$Res> {
  factory _$$OrderQuantityImplCopyWith(
          _$OrderQuantityImpl value, $Res Function(_$OrderQuantityImpl) then) =
      __$$OrderQuantityImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int order});
}

/// @nodoc
class __$$OrderQuantityImplCopyWithImpl<$Res>
    extends _$ProductReqEventCopyWithImpl<$Res, _$OrderQuantityImpl>
    implements _$$OrderQuantityImplCopyWith<$Res> {
  __$$OrderQuantityImplCopyWithImpl(
      _$OrderQuantityImpl _value, $Res Function(_$OrderQuantityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
  }) {
    return _then(_$OrderQuantityImpl(
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$OrderQuantityImpl implements _OrderQuantity {
  const _$OrderQuantityImpl({required this.order});

  @override
  final int order;

  @override
  String toString() {
    return 'ProductReqEvent.orderQuantity(order: $order)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderQuantityImpl &&
            (identical(other.order, order) || other.order == order));
  }

  @override
  int get hashCode => Object.hash(runtimeType, order);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderQuantityImplCopyWith<_$OrderQuantityImpl> get copyWith =>
      __$$OrderQuantityImplCopyWithImpl<_$OrderQuantityImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) name,
    required TResult Function(String description) description,
    required TResult Function(double price) price,
    required TResult Function(List<FileSend> images) images,
    required TResult Function(List<FileSend> videos) videos,
    required TResult Function(int id) id,
    required TResult Function(String title) title,
    required TResult Function(int categoryId) categoryId,
    required TResult Function(int order) orderQuantity,
    required TResult Function(double rate) rate,
  }) {
    return orderQuantity(order);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? name,
    TResult? Function(String description)? description,
    TResult? Function(double price)? price,
    TResult? Function(List<FileSend> images)? images,
    TResult? Function(List<FileSend> videos)? videos,
    TResult? Function(int id)? id,
    TResult? Function(String title)? title,
    TResult? Function(int categoryId)? categoryId,
    TResult? Function(int order)? orderQuantity,
    TResult? Function(double rate)? rate,
  }) {
    return orderQuantity?.call(order);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? name,
    TResult Function(String description)? description,
    TResult Function(double price)? price,
    TResult Function(List<FileSend> images)? images,
    TResult Function(List<FileSend> videos)? videos,
    TResult Function(int id)? id,
    TResult Function(String title)? title,
    TResult Function(int categoryId)? categoryId,
    TResult Function(int order)? orderQuantity,
    TResult Function(double rate)? rate,
    required TResult orElse(),
  }) {
    if (orderQuantity != null) {
      return orderQuantity(order);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Name value) name,
    required TResult Function(_Description value) description,
    required TResult Function(_Price value) price,
    required TResult Function(_Images value) images,
    required TResult Function(_Videos value) videos,
    required TResult Function(_ID value) id,
    required TResult Function(_Title value) title,
    required TResult Function(_CategoryId value) categoryId,
    required TResult Function(_OrderQuantity value) orderQuantity,
    required TResult Function(_Rate value) rate,
  }) {
    return orderQuantity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Name value)? name,
    TResult? Function(_Description value)? description,
    TResult? Function(_Price value)? price,
    TResult? Function(_Images value)? images,
    TResult? Function(_Videos value)? videos,
    TResult? Function(_ID value)? id,
    TResult? Function(_Title value)? title,
    TResult? Function(_CategoryId value)? categoryId,
    TResult? Function(_OrderQuantity value)? orderQuantity,
    TResult? Function(_Rate value)? rate,
  }) {
    return orderQuantity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Name value)? name,
    TResult Function(_Description value)? description,
    TResult Function(_Price value)? price,
    TResult Function(_Images value)? images,
    TResult Function(_Videos value)? videos,
    TResult Function(_ID value)? id,
    TResult Function(_Title value)? title,
    TResult Function(_CategoryId value)? categoryId,
    TResult Function(_OrderQuantity value)? orderQuantity,
    TResult Function(_Rate value)? rate,
    required TResult orElse(),
  }) {
    if (orderQuantity != null) {
      return orderQuantity(this);
    }
    return orElse();
  }
}

abstract class _OrderQuantity implements ProductReqEvent {
  const factory _OrderQuantity({required final int order}) =
      _$OrderQuantityImpl;

  int get order;
  @JsonKey(ignore: true)
  _$$OrderQuantityImplCopyWith<_$OrderQuantityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RateImplCopyWith<$Res> {
  factory _$$RateImplCopyWith(
          _$RateImpl value, $Res Function(_$RateImpl) then) =
      __$$RateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double rate});
}

/// @nodoc
class __$$RateImplCopyWithImpl<$Res>
    extends _$ProductReqEventCopyWithImpl<$Res, _$RateImpl>
    implements _$$RateImplCopyWith<$Res> {
  __$$RateImplCopyWithImpl(_$RateImpl _value, $Res Function(_$RateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rate = null,
  }) {
    return _then(_$RateImpl(
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$RateImpl implements _Rate {
  const _$RateImpl({required this.rate});

  @override
  final double rate;

  @override
  String toString() {
    return 'ProductReqEvent.rate(rate: $rate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RateImpl &&
            (identical(other.rate, rate) || other.rate == rate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RateImplCopyWith<_$RateImpl> get copyWith =>
      __$$RateImplCopyWithImpl<_$RateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) name,
    required TResult Function(String description) description,
    required TResult Function(double price) price,
    required TResult Function(List<FileSend> images) images,
    required TResult Function(List<FileSend> videos) videos,
    required TResult Function(int id) id,
    required TResult Function(String title) title,
    required TResult Function(int categoryId) categoryId,
    required TResult Function(int order) orderQuantity,
    required TResult Function(double rate) rate,
  }) {
    return rate(this.rate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? name,
    TResult? Function(String description)? description,
    TResult? Function(double price)? price,
    TResult? Function(List<FileSend> images)? images,
    TResult? Function(List<FileSend> videos)? videos,
    TResult? Function(int id)? id,
    TResult? Function(String title)? title,
    TResult? Function(int categoryId)? categoryId,
    TResult? Function(int order)? orderQuantity,
    TResult? Function(double rate)? rate,
  }) {
    return rate?.call(this.rate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? name,
    TResult Function(String description)? description,
    TResult Function(double price)? price,
    TResult Function(List<FileSend> images)? images,
    TResult Function(List<FileSend> videos)? videos,
    TResult Function(int id)? id,
    TResult Function(String title)? title,
    TResult Function(int categoryId)? categoryId,
    TResult Function(int order)? orderQuantity,
    TResult Function(double rate)? rate,
    required TResult orElse(),
  }) {
    if (rate != null) {
      return rate(this.rate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Name value) name,
    required TResult Function(_Description value) description,
    required TResult Function(_Price value) price,
    required TResult Function(_Images value) images,
    required TResult Function(_Videos value) videos,
    required TResult Function(_ID value) id,
    required TResult Function(_Title value) title,
    required TResult Function(_CategoryId value) categoryId,
    required TResult Function(_OrderQuantity value) orderQuantity,
    required TResult Function(_Rate value) rate,
  }) {
    return rate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Name value)? name,
    TResult? Function(_Description value)? description,
    TResult? Function(_Price value)? price,
    TResult? Function(_Images value)? images,
    TResult? Function(_Videos value)? videos,
    TResult? Function(_ID value)? id,
    TResult? Function(_Title value)? title,
    TResult? Function(_CategoryId value)? categoryId,
    TResult? Function(_OrderQuantity value)? orderQuantity,
    TResult? Function(_Rate value)? rate,
  }) {
    return rate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Name value)? name,
    TResult Function(_Description value)? description,
    TResult Function(_Price value)? price,
    TResult Function(_Images value)? images,
    TResult Function(_Videos value)? videos,
    TResult Function(_ID value)? id,
    TResult Function(_Title value)? title,
    TResult Function(_CategoryId value)? categoryId,
    TResult Function(_OrderQuantity value)? orderQuantity,
    TResult Function(_Rate value)? rate,
    required TResult orElse(),
  }) {
    if (rate != null) {
      return rate(this);
    }
    return orElse();
  }
}

abstract class _Rate implements ProductReqEvent {
  const factory _Rate({required final double rate}) = _$RateImpl;

  double get rate;
  @JsonKey(ignore: true)
  _$$RateImplCopyWith<_$RateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductReqState {
  Product get product => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Product product) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Product product)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Product product)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductReqStateCopyWith<ProductReqState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductReqStateCopyWith<$Res> {
  factory $ProductReqStateCopyWith(
          ProductReqState value, $Res Function(ProductReqState) then) =
      _$ProductReqStateCopyWithImpl<$Res, ProductReqState>;
  @useResult
  $Res call({Product product});

  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class _$ProductReqStateCopyWithImpl<$Res, $Val extends ProductReqState>
    implements $ProductReqStateCopyWith<$Res> {
  _$ProductReqStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_value.copyWith(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res> get product {
    return $ProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $ProductReqStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Product product});

  @override
  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ProductReqStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$InitialImpl(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl({required this.product});

  @override
  final Product product;

  @override
  String toString() {
    return 'ProductReqState.initial(product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Product product) initial,
  }) {
    return initial(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Product product)? initial,
  }) {
    return initial?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Product product)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ProductReqState {
  const factory _Initial({required final Product product}) = _$InitialImpl;

  @override
  Product get product;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
