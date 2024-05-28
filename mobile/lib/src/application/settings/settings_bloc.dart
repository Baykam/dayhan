import 'package:dayhan_mobile/src/domain/index.dart';
import 'package:dayhan_mobile/src/src/utils/index.dart';
import 'package:dayhan_mobile/src/src/utils/theme/light_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../infrastructure/index.dart';

part 'settings_event.dart';
part 'settings_state.dart';
part 'settings_bloc.freezed.dart';

/// settings project bloc
final class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  /// default theme data is [light]
  /// default locale data is [en]
  SettingsBloc()
      : _iSettings = Settings(),
        super(
          _Initial(
            theme: ProductLightTheme().themeData,
            switchData: false,
            locale: ProductLocale.en.locale,
          ),
        ) {
    on<_Theme>(_onTheme);
    on<_DefaultTheme>(_onDefaultTheme);
    on<_DefaultLocale>(_onDefaultLocale);
    on<_ChangeLocale>(_onChangeLocale);
  }

  final ISettings _iSettings;

  Future<void> _onTheme(_Theme event, Emitter<SettingsState> emit) async {
    await _iSettings.setTheme(
      value: state.switchData ? ThemeEnum.light.name : ThemeEnum.dark.name,
    );

    final theme = await _iSettings.defaultData();
    emit(state.copyWith(theme: theme, switchData: !state.switchData));
  }

  Future<void> _onDefaultTheme(
    _DefaultTheme event,
    Emitter<SettingsState> emit,
  ) async {
    final theme = await _iSettings.defaultData();
    emit(
      state.copyWith(
        theme: theme,
        switchData: theme == ProductDarkTheme().themeData,
      ),
    );
  }

  Future<void> _onDefaultLocale(
    _DefaultLocale event,
    Emitter<SettingsState> emit,
  ) async {
    final locale = await _iSettings.defaultLocale();
    emit(state.copyWith(locale: locale));
  }

  Future<void> _onChangeLocale(
    _ChangeLocale event,
    Emitter<SettingsState> emit,
  ) async {
    await _iSettings.setLocale(value: event.locale.languageCode);
    final locale = await _iSettings.defaultLocale();
    emit(state.copyWith(locale: locale));
  }
}
