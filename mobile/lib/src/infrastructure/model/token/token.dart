import 'package:freezed_annotation/freezed_annotation.dart';

part 'token.g.dart';
part 'token.freezed.dart';

@freezed

/// Token Control model
class Token with _$Token {
  /// in access and refresh Strings
  const factory Token({
    String? access_token,
    String? refresh_token,
  }) = _Token;

  /// fromJson function
  factory Token.fromJson(Map<String, dynamic> json) => _$TokenFromJson(json);
}
