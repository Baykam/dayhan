part of 'settings_bloc.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState.initial({
    required ThemeData theme,
    required bool switchData,
    required Locale locale,
  }) = _Initial;
}
