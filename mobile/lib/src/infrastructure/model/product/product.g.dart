// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProductAdapter extends TypeAdapter<Product> {
  @override
  final int typeId = 0;

  @override
  Product read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Product(
      id: fields[0] as int?,
      title: fields[1] as String?,
      description: fields[2] as String?,
      category_id: fields[3] as int?,
      price: fields[4] as double?,
      name: fields[5] as String?,
      min_order_quantity: fields[6] as int?,
      rate: fields[7] as double?,
      images: (fields[8] as List?)?.cast<FileSend>(),
      videos: (fields[9] as List?)?.cast<FileSend>(),
    );
  }

  @override
  void write(BinaryWriter writer, Product obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.description)
      ..writeByte(3)
      ..write(obj.category_id)
      ..writeByte(4)
      ..write(obj.price)
      ..writeByte(5)
      ..write(obj.name)
      ..writeByte(6)
      ..write(obj.min_order_quantity)
      ..writeByte(7)
      ..write(obj.rate)
      ..writeByte(8)
      ..write(obj.images)
      ..writeByte(9)
      ..write(obj.videos);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

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
