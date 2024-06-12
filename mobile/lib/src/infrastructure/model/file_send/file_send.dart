import 'package:freezed_annotation/freezed_annotation.dart';

part 'file_send.g.dart';
part 'file_send.freezed.dart';

@freezed

/// FileSend Control model
class FileSend with _$FileSend {
  ///
  const factory FileSend({
    String? name,
    String? url,
  }) = _FileSend;

  /// fromJson function
  factory FileSend.fromJson(Map<String, dynamic> json) =>
      _$FileSendFromJson(json);
}
