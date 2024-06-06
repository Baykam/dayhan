import 'package:freezed_annotation/freezed_annotation.dart';

import '../../index.dart';

part 'product.g.dart';
part 'product.freezed.dart';

@freezed

/// Product Control model
class Product with _$Product {
  /// Product models instruments
  const factory Product({
    int? id,
    String? title,
    String? description,
    int? category_id,
    double? price,
    String? name,
    int? min_order_quantity,
    double? rate,
    List<FileSend>? images,
    List<FileSend>? videos,
  }) = _Product;

  /// fromJson function
  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}
