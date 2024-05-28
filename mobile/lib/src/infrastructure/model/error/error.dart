import 'package:freezed_annotation/freezed_annotation.dart';

part 'error.g.dart';
part 'error.freezed.dart';

@freezed

/// Error Control model
class Error with _$Error {
  /// in access and refresh Strings
  const factory Error({String? error}) = _Error;

  /// fromJson function
  factory Error.fromJson(Map<String, dynamic> json) => _$ErrorFromJson(json);
}
