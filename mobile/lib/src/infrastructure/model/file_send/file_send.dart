import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'file_send.g.dart';
part 'file_send.freezed.dart';

@freezed
@HiveType(typeId: 1)
/// FileSend Control model
class FileSend with _$FileSend {
  ///
  const factory FileSend({
    @HiveField(0) String? name,
    @HiveField(1) String? url,
  }) = _FileSend;

  /// fromJson function
  factory FileSend.fromJson(Map<String, dynamic> json) =>
      _$FileSendFromJson(json);
}
