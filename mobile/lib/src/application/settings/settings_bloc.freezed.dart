// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SettingsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() theme,
    required TResult Function() defaultTheme,
    required TResult Function() defaultLocale,
    required TResult Function(Locale locale) changeLocale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? theme,
    TResult? Function()? defaultTheme,
    TResult? Function()? defaultLocale,
    TResult? Function(Locale locale)? changeLocale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? theme,
    TResult Function()? defaultTheme,
    TResult Function()? defaultLocale,
    TResult Function(Locale locale)? changeLocale,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Theme value) theme,
    required TResult Function(_DefaultTheme value) defaultTheme,
    required TResult Function(_DefaultLocale value) defaultLocale,
    required TResult Function(_ChangeLocale value) changeLocale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Theme value)? theme,
    TResult? Function(_DefaultTheme value)? defaultTheme,
    TResult? Function(_DefaultLocale value)? defaultLocale,
    TResult? Function(_ChangeLocale value)? changeLocale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Theme value)? theme,
    TResult Function(_DefaultTheme value)? defaultTheme,
    TResult Function(_DefaultLocale value)? defaultLocale,
    TResult Function(_ChangeLocale value)? changeLocale,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsEventCopyWith<$Res> {
  factory $SettingsEventCopyWith(
          SettingsEvent value, $Res Function(SettingsEvent) then) =
      _$SettingsEventCopyWithImpl<$Res, SettingsEvent>;
}

/// @nodoc
class _$SettingsEventCopyWithImpl<$Res, $Val extends SettingsEvent>
    implements $SettingsEventCopyWith<$Res> {
  _$SettingsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ThemeImplCopyWith<$Res> {
  factory _$$ThemeImplCopyWith(
          _$ThemeImpl value, $Res Function(_$ThemeImpl) then) =
      __$$ThemeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ThemeImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$ThemeImpl>
    implements _$$ThemeImplCopyWith<$Res> {
  __$$ThemeImplCopyWithImpl(
      _$ThemeImpl _value, $Res Function(_$ThemeImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ThemeImpl implements _Theme {
  const _$ThemeImpl();

  @override
  String toString() {
    return 'SettingsEvent.theme()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ThemeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() theme,
    required TResult Function() defaultTheme,
    required TResult Function() defaultLocale,
    required TResult Function(Locale locale) changeLocale,
  }) {
    return theme();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? theme,
    TResult? Function()? defaultTheme,
    TResult? Function()? defaultLocale,
    TResult? Function(Locale locale)? changeLocale,
  }) {
    return theme?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? theme,
    TResult Function()? defaultTheme,
    TResult Function()? defaultLocale,
    TResult Function(Locale locale)? changeLocale,
    required TResult orElse(),
  }) {
    if (theme != null) {
      return theme();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Theme value) theme,
    required TResult Function(_DefaultTheme value) defaultTheme,
    required TResult Function(_DefaultLocale value) defaultLocale,
    required TResult Function(_ChangeLocale value) changeLocale,
  }) {
    return theme(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Theme value)? theme,
    TResult? Function(_DefaultTheme value)? defaultTheme,
    TResult? Function(_DefaultLocale value)? defaultLocale,
    TResult? Function(_ChangeLocale value)? changeLocale,
  }) {
    return theme?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Theme value)? theme,
    TResult Function(_DefaultTheme value)? defaultTheme,
    TResult Function(_DefaultLocale value)? defaultLocale,
    TResult Function(_ChangeLocale value)? changeLocale,
    required TResult orElse(),
  }) {
    if (theme != null) {
      return theme(this);
    }
    return orElse();
  }
}

abstract class _Theme implements SettingsEvent {
  const factory _Theme() = _$ThemeImpl;
}

/// @nodoc
abstract class _$$DefaultThemeImplCopyWith<$Res> {
  factory _$$DefaultThemeImplCopyWith(
          _$DefaultThemeImpl value, $Res Function(_$DefaultThemeImpl) then) =
      __$$DefaultThemeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DefaultThemeImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$DefaultThemeImpl>
    implements _$$DefaultThemeImplCopyWith<$Res> {
  __$$DefaultThemeImplCopyWithImpl(
      _$DefaultThemeImpl _value, $Res Function(_$DefaultThemeImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DefaultThemeImpl implements _DefaultTheme {
  const _$DefaultThemeImpl();

  @override
  String toString() {
    return 'SettingsEvent.defaultTheme()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DefaultThemeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() theme,
    required TResult Function() defaultTheme,
    required TResult Function() defaultLocale,
    required TResult Function(Locale locale) changeLocale,
  }) {
    return defaultTheme();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? theme,
    TResult? Function()? defaultTheme,
    TResult? Function()? defaultLocale,
    TResult? Function(Locale locale)? changeLocale,
  }) {
    return defaultTheme?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? theme,
    TResult Function()? defaultTheme,
    TResult Function()? defaultLocale,
    TResult Function(Locale locale)? changeLocale,
    required TResult orElse(),
  }) {
    if (defaultTheme != null) {
      return defaultTheme();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Theme value) theme,
    required TResult Function(_DefaultTheme value) defaultTheme,
    required TResult Function(_DefaultLocale value) defaultLocale,
    required TResult Function(_ChangeLocale value) changeLocale,
  }) {
    return defaultTheme(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Theme value)? theme,
    TResult? Function(_DefaultTheme value)? defaultTheme,
    TResult? Function(_DefaultLocale value)? defaultLocale,
    TResult? Function(_ChangeLocale value)? changeLocale,
  }) {
    return defaultTheme?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Theme value)? theme,
    TResult Function(_DefaultTheme value)? defaultTheme,
    TResult Function(_DefaultLocale value)? defaultLocale,
    TResult Function(_ChangeLocale value)? changeLocale,
    required TResult orElse(),
  }) {
    if (defaultTheme != null) {
      return defaultTheme(this);
    }
    return orElse();
  }
}

abstract class _DefaultTheme implements SettingsEvent {
  const factory _DefaultTheme() = _$DefaultThemeImpl;
}

/// @nodoc
abstract class _$$DefaultLocaleImplCopyWith<$Res> {
  factory _$$DefaultLocaleImplCopyWith(
          _$DefaultLocaleImpl value, $Res Function(_$DefaultLocaleImpl) then) =
      __$$DefaultLocaleImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DefaultLocaleImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$DefaultLocaleImpl>
    implements _$$DefaultLocaleImplCopyWith<$Res> {
  __$$DefaultLocaleImplCopyWithImpl(
      _$DefaultLocaleImpl _value, $Res Function(_$DefaultLocaleImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DefaultLocaleImpl implements _DefaultLocale {
  const _$DefaultLocaleImpl();

  @override
  String toString() {
    return 'SettingsEvent.defaultLocale()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DefaultLocaleImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() theme,
    required TResult Function() defaultTheme,
    required TResult Function() defaultLocale,
    required TResult Function(Locale locale) changeLocale,
  }) {
    return defaultLocale();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? theme,
    TResult? Function()? defaultTheme,
    TResult? Function()? defaultLocale,
    TResult? Function(Locale locale)? changeLocale,
  }) {
    return defaultLocale?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? theme,
    TResult Function()? defaultTheme,
    TResult Function()? defaultLocale,
    TResult Function(Locale locale)? changeLocale,
    required TResult orElse(),
  }) {
    if (defaultLocale != null) {
      return defaultLocale();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Theme value) theme,
    required TResult Function(_DefaultTheme value) defaultTheme,
    required TResult Function(_DefaultLocale value) defaultLocale,
    required TResult Function(_ChangeLocale value) changeLocale,
  }) {
    return defaultLocale(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Theme value)? theme,
    TResult? Function(_DefaultTheme value)? defaultTheme,
    TResult? Function(_DefaultLocale value)? defaultLocale,
    TResult? Function(_ChangeLocale value)? changeLocale,
  }) {
    return defaultLocale?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Theme value)? theme,
    TResult Function(_DefaultTheme value)? defaultTheme,
    TResult Function(_DefaultLocale value)? defaultLocale,
    TResult Function(_ChangeLocale value)? changeLocale,
    required TResult orElse(),
  }) {
    if (defaultLocale != null) {
      return defaultLocale(this);
    }
    return orElse();
  }
}

abstract class _DefaultLocale implements SettingsEvent {
  const factory _DefaultLocale() = _$DefaultLocaleImpl;
}

/// @nodoc
abstract class _$$ChangeLocaleImplCopyWith<$Res> {
  factory _$$ChangeLocaleImplCopyWith(
          _$ChangeLocaleImpl value, $Res Function(_$ChangeLocaleImpl) then) =
      __$$ChangeLocaleImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Locale locale});
}

/// @nodoc
class __$$ChangeLocaleImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$ChangeLocaleImpl>
    implements _$$ChangeLocaleImplCopyWith<$Res> {
  __$$ChangeLocaleImplCopyWithImpl(
      _$ChangeLocaleImpl _value, $Res Function(_$ChangeLocaleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locale = null,
  }) {
    return _then(_$ChangeLocaleImpl(
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
    ));
  }
}

/// @nodoc

class _$ChangeLocaleImpl implements _ChangeLocale {
  const _$ChangeLocaleImpl({required this.locale});

  @override
  final Locale locale;

  @override
  String toString() {
    return 'SettingsEvent.changeLocale(locale: $locale)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeLocaleImpl &&
            (identical(other.locale, locale) || other.locale == locale));
  }

  @override
  int get hashCode => Object.hash(runtimeType, locale);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeLocaleImplCopyWith<_$ChangeLocaleImpl> get copyWith =>
      __$$ChangeLocaleImplCopyWithImpl<_$ChangeLocaleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() theme,
    required TResult Function() defaultTheme,
    required TResult Function() defaultLocale,
    required TResult Function(Locale locale) changeLocale,
  }) {
    return changeLocale(locale);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? theme,
    TResult? Function()? defaultTheme,
    TResult? Function()? defaultLocale,
    TResult? Function(Locale locale)? changeLocale,
  }) {
    return changeLocale?.call(locale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? theme,
    TResult Function()? defaultTheme,
    TResult Function()? defaultLocale,
    TResult Function(Locale locale)? changeLocale,
    required TResult orElse(),
  }) {
    if (changeLocale != null) {
      return changeLocale(locale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Theme value) theme,
    required TResult Function(_DefaultTheme value) defaultTheme,
    required TResult Function(_DefaultLocale value) defaultLocale,
    required TResult Function(_ChangeLocale value) changeLocale,
  }) {
    return changeLocale(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Theme value)? theme,
    TResult? Function(_DefaultTheme value)? defaultTheme,
    TResult? Function(_DefaultLocale value)? defaultLocale,
    TResult? Function(_ChangeLocale value)? changeLocale,
  }) {
    return changeLocale?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Theme value)? theme,
    TResult Function(_DefaultTheme value)? defaultTheme,
    TResult Function(_DefaultLocale value)? defaultLocale,
    TResult Function(_ChangeLocale value)? changeLocale,
    required TResult orElse(),
  }) {
    if (changeLocale != null) {
      return changeLocale(this);
    }
    return orElse();
  }
}

abstract class _ChangeLocale implements SettingsEvent {
  const factory _ChangeLocale({required final Locale locale}) =
      _$ChangeLocaleImpl;

  Locale get locale;
  @JsonKey(ignore: true)
  _$$ChangeLocaleImplCopyWith<_$ChangeLocaleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SettingsState {
  ThemeData get theme => throw _privateConstructorUsedError;
  bool get switchData => throw _privateConstructorUsedError;
  Locale get locale => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ThemeData theme, bool switchData, Locale locale)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ThemeData theme, bool switchData, Locale locale)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ThemeData theme, bool switchData, Locale locale)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingsStateCopyWith<SettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(
          SettingsState value, $Res Function(SettingsState) then) =
      _$SettingsStateCopyWithImpl<$Res, SettingsState>;
  @useResult
  $Res call({ThemeData theme, bool switchData, Locale locale});
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res, $Val extends SettingsState>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? theme = null,
    Object? switchData = null,
    Object? locale = null,
  }) {
    return _then(_value.copyWith(
      theme: null == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as ThemeData,
      switchData: null == switchData
          ? _value.switchData
          : switchData // ignore: cast_nullable_to_non_nullable
              as bool,
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $SettingsStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ThemeData theme, bool switchData, Locale locale});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? theme = null,
    Object? switchData = null,
    Object? locale = null,
  }) {
    return _then(_$InitialImpl(
      theme: null == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as ThemeData,
      switchData: null == switchData
          ? _value.switchData
          : switchData // ignore: cast_nullable_to_non_nullable
              as bool,
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.theme, required this.switchData, required this.locale});

  @override
  final ThemeData theme;
  @override
  final bool switchData;
  @override
  final Locale locale;

  @override
  String toString() {
    return 'SettingsState.initial(theme: $theme, switchData: $switchData, locale: $locale)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.theme, theme) || other.theme == theme) &&
            (identical(other.switchData, switchData) ||
                other.switchData == switchData) &&
            (identical(other.locale, locale) || other.locale == locale));
  }

  @override
  int get hashCode => Object.hash(runtimeType, theme, switchData, locale);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ThemeData theme, bool switchData, Locale locale)
        initial,
  }) {
    return initial(theme, switchData, locale);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ThemeData theme, bool switchData, Locale locale)? initial,
  }) {
    return initial?.call(theme, switchData, locale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ThemeData theme, bool switchData, Locale locale)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(theme, switchData, locale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SettingsState {
  const factory _Initial(
      {required final ThemeData theme,
      required final bool switchData,
      required final Locale locale}) = _$InitialImpl;

  @override
  ThemeData get theme;
  @override
  bool get switchData;
  @override
  Locale get locale;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
