import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_key.g.dart';
part 'verify_key.freezed.dart';

@freezed

/// Verifykey Control model
class Verifykey with _$Verifykey {
  /// in access and refresh Strings
  const factory Verifykey({
    String? user_id,
    String? verify_key,
  }) = _Verifykey;

  /// fromJson function
  factory Verifykey.fromJson(Map<String, dynamic> json) =>
      _$VerifykeyFromJson(json);
}
