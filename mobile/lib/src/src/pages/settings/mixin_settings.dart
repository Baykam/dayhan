part of 'settings.dart';

mixin MixinSettings on State<SettingsPage> {
  Future<void> logOut() async {
    await CacheManager.shared
        .remove(CachePaths.accessKey.path)
        .then((value) => context.pushReplacementNamed(RoutePath.auth.name));
  }

  void selectLocale(Locale? locale) {
    context
        .read<SettingsBloc>()
        .add(SettingsEvent.changeLocale(locale: locale ?? const Locale('en')));
  }

  void selectTheme(bool v) {
    context.read<SettingsBloc>().add(const SettingsEvent.theme());
  }
}
