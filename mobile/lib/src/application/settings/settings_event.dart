part of 'settings_bloc.dart';

@freezed
class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.theme() = _Theme;
  const factory SettingsEvent.defaultTheme() = _DefaultTheme;
  const factory SettingsEvent.defaultLocale() = _DefaultLocale;
  const factory SettingsEvent.changeLocale({required Locale locale}) =
      _ChangeLocale;
}
