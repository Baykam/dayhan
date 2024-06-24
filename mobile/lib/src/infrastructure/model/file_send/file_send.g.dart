// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_send.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FileSendAdapter extends TypeAdapter<FileSend> {
  @override
  final int typeId = 1;

  @override
  FileSend read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FileSend(
      name: fields[0] as String?,
      url: fields[1] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, FileSend obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.url);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FileSendAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FileSendImpl _$$FileSendImplFromJson(Map<String, dynamic> json) =>
    _$FileSendImpl(
      name: json['name'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$FileSendImplToJson(_$FileSendImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };
