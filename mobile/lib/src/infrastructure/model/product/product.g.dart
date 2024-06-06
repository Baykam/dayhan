// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      description: json['description'] as String?,
      category_id: (json['category_id'] as num?)?.toInt(),
      price: (json['price'] as num?)?.toDouble(),
      name: json['name'] as String?,
      min_order_quantity: (json['min_order_quantity'] as num?)?.toInt(),
      rate: (json['rate'] as num?)?.toDouble(),
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => FileSend.fromJson(e as Map<String, dynamic>))
          .toList(),
      videos: (json['videos'] as List<dynamic>?)
          ?.map((e) => FileSend.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'category_id': instance.category_id,
      'price': instance.price,
      'name': instance.name,
      'min_order_quantity': instance.min_order_quantity,
      'rate': instance.rate,
      'images': instance.images,
      'videos': instance.videos,
    };
