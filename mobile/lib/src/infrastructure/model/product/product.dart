import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../index.dart';

part 'product.g.dart';
part 'product.freezed.dart';

@freezed
@HiveType(typeId: 0)

/// Product Control model
class Product with _$Product {
  /// Product models instruments
  const factory Product({
    @HiveField(0) int? id,
    @HiveField(1) String? title,
    @HiveField(2) String? description,
    @HiveField(3) int? category_id,
    @HiveField(4) double? price,
    @HiveField(5) String? name,
    @HiveField(6) int? min_order_quantity,
    @HiveField(7) double? rate,
    @HiveField(8) List<FileSend>? images,
    @HiveField(9) List<FileSend>? videos,
  }) = _Product;

  /// fromJson function
  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}
