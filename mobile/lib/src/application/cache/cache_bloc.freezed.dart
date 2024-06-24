// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cache_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CacheEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Product product) add,
    required TResult Function(Product product) remove,
    required TResult Function() getList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Product product)? add,
    TResult? Function(Product product)? remove,
    TResult? Function()? getList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Product product)? add,
    TResult Function(Product product)? remove,
    TResult Function()? getList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Add value) add,
    required TResult Function(_Remove value) remove,
    required TResult Function(_GetList value) getList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Add value)? add,
    TResult? Function(_Remove value)? remove,
    TResult? Function(_GetList value)? getList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_Remove value)? remove,
    TResult Function(_GetList value)? getList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CacheEventCopyWith<$Res> {
  factory $CacheEventCopyWith(
          CacheEvent value, $Res Function(CacheEvent) then) =
      _$CacheEventCopyWithImpl<$Res, CacheEvent>;
}

/// @nodoc
class _$CacheEventCopyWithImpl<$Res, $Val extends CacheEvent>
    implements $CacheEventCopyWith<$Res> {
  _$CacheEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AddImplCopyWith<$Res> {
  factory _$$AddImplCopyWith(_$AddImpl value, $Res Function(_$AddImpl) then) =
      __$$AddImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Product product});

  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class __$$AddImplCopyWithImpl<$Res>
    extends _$CacheEventCopyWithImpl<$Res, _$AddImpl>
    implements _$$AddImplCopyWith<$Res> {
  __$$AddImplCopyWithImpl(_$AddImpl _value, $Res Function(_$AddImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$AddImpl(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res> get product {
    return $ProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value));
    });
  }
}

/// @nodoc

class _$AddImpl implements _Add {
  const _$AddImpl({required this.product});

  @override
  final Product product;

  @override
  String toString() {
    return 'CacheEvent.add(product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddImpl &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddImplCopyWith<_$AddImpl> get copyWith =>
      __$$AddImplCopyWithImpl<_$AddImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Product product) add,
    required TResult Function(Product product) remove,
    required TResult Function() getList,
  }) {
    return add(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Product product)? add,
    TResult? Function(Product product)? remove,
    TResult? Function()? getList,
  }) {
    return add?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Product product)? add,
    TResult Function(Product product)? remove,
    TResult Function()? getList,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Add value) add,
    required TResult Function(_Remove value) remove,
    required TResult Function(_GetList value) getList,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Add value)? add,
    TResult? Function(_Remove value)? remove,
    TResult? Function(_GetList value)? getList,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_Remove value)? remove,
    TResult Function(_GetList value)? getList,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class _Add implements CacheEvent {
  const factory _Add({required final Product product}) = _$AddImpl;

  Product get product;
  @JsonKey(ignore: true)
  _$$AddImplCopyWith<_$AddImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveImplCopyWith<$Res> {
  factory _$$RemoveImplCopyWith(
          _$RemoveImpl value, $Res Function(_$RemoveImpl) then) =
      __$$RemoveImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Product product});

  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class __$$RemoveImplCopyWithImpl<$Res>
    extends _$CacheEventCopyWithImpl<$Res, _$RemoveImpl>
    implements _$$RemoveImplCopyWith<$Res> {
  __$$RemoveImplCopyWithImpl(
      _$RemoveImpl _value, $Res Function(_$RemoveImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$RemoveImpl(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res> get product {
    return $ProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value));
    });
  }
}

/// @nodoc

class _$RemoveImpl implements _Remove {
  const _$RemoveImpl({required this.product});

  @override
  final Product product;

  @override
  String toString() {
    return 'CacheEvent.remove(product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveImpl &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveImplCopyWith<_$RemoveImpl> get copyWith =>
      __$$RemoveImplCopyWithImpl<_$RemoveImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Product product) add,
    required TResult Function(Product product) remove,
    required TResult Function() getList,
  }) {
    return remove(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Product product)? add,
    TResult? Function(Product product)? remove,
    TResult? Function()? getList,
  }) {
    return remove?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Product product)? add,
    TResult Function(Product product)? remove,
    TResult Function()? getList,
    required TResult orElse(),
  }) {
    if (remove != null) {
      return remove(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Add value) add,
    required TResult Function(_Remove value) remove,
    required TResult Function(_GetList value) getList,
  }) {
    return remove(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Add value)? add,
    TResult? Function(_Remove value)? remove,
    TResult? Function(_GetList value)? getList,
  }) {
    return remove?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_Remove value)? remove,
    TResult Function(_GetList value)? getList,
    required TResult orElse(),
  }) {
    if (remove != null) {
      return remove(this);
    }
    return orElse();
  }
}

abstract class _Remove implements CacheEvent {
  const factory _Remove({required final Product product}) = _$RemoveImpl;

  Product get product;
  @JsonKey(ignore: true)
  _$$RemoveImplCopyWith<_$RemoveImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetListImplCopyWith<$Res> {
  factory _$$GetListImplCopyWith(
          _$GetListImpl value, $Res Function(_$GetListImpl) then) =
      __$$GetListImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetListImplCopyWithImpl<$Res>
    extends _$CacheEventCopyWithImpl<$Res, _$GetListImpl>
    implements _$$GetListImplCopyWith<$Res> {
  __$$GetListImplCopyWithImpl(
      _$GetListImpl _value, $Res Function(_$GetListImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetListImpl implements _GetList {
  const _$GetListImpl();

  @override
  String toString() {
    return 'CacheEvent.getList()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetListImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Product product) add,
    required TResult Function(Product product) remove,
    required TResult Function() getList,
  }) {
    return getList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Product product)? add,
    TResult? Function(Product product)? remove,
    TResult? Function()? getList,
  }) {
    return getList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Product product)? add,
    TResult Function(Product product)? remove,
    TResult Function()? getList,
    required TResult orElse(),
  }) {
    if (getList != null) {
      return getList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Add value) add,
    required TResult Function(_Remove value) remove,
    required TResult Function(_GetList value) getList,
  }) {
    return getList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Add value)? add,
    TResult? Function(_Remove value)? remove,
    TResult? Function(_GetList value)? getList,
  }) {
    return getList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_Remove value)? remove,
    TResult Function(_GetList value)? getList,
    required TResult orElse(),
  }) {
    if (getList != null) {
      return getList(this);
    }
    return orElse();
  }
}

abstract class _GetList implements CacheEvent {
  const factory _GetList() = _$GetListImpl;
}

/// @nodoc
mixin _$CacheState {
  List<Product> get products => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Product> products) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Product> products)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Product> products)? initial,
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
  $CacheStateCopyWith<CacheState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CacheStateCopyWith<$Res> {
  factory $CacheStateCopyWith(
          CacheState value, $Res Function(CacheState) then) =
      _$CacheStateCopyWithImpl<$Res, CacheState>;
  @useResult
  $Res call({List<Product> products});
}

/// @nodoc
class _$CacheStateCopyWithImpl<$Res, $Val extends CacheState>
    implements $CacheStateCopyWith<$Res> {
  _$CacheStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_value.copyWith(
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $CacheStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Product> products});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CacheStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_$InitialImpl(
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl({required final List<Product> products})
      : _products = products;

  final List<Product> _products;
  @override
  List<Product> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'CacheState.initial(products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Product> products) initial,
  }) {
    return initial(products);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Product> products)? initial,
  }) {
    return initial?.call(products);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Product> products)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(products);
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

abstract class _Initial implements CacheState {
  const factory _Initial({required final List<Product> products}) =
      _$InitialImpl;

  @override
  List<Product> get products;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
