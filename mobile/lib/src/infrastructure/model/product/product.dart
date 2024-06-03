import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.g.dart';
part 'product.freezed.dart';

@freezed

/// Product Control model
class Product with _$Product {
  /// Product models instruments
  const factory Product({
    int? id,
    String? name,
    String? description,
    double? price,
  }) = _Product;

  /// fromJson function
  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}
