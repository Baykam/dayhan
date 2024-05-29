part of '../navbar.dart';

final class NavBarAppbar extends StatelessWidget implements PreferredSize {
  const NavBarAppbar({super.key, required this.state, this.height});
  final SettingsState state;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        Switch.adaptive(
          value: state.switchData,
          onChanged: (_) {
            context.read<SettingsBloc>().add(const SettingsEvent.theme());
          },
        ),
      ],
      bottom: PreferredSize(
        preferredSize: preferredSize,
        child: child,
      ),
    );
  }

  @override
  Widget get child => BlocBuilder<SettingsBloc, SettingsState>(
        builder: (context, state) => DropdownButton(
          items: ProductLocale.values
              .map(
                (e) => DropdownMenuItem(
                  value: e.locale,
                  child: Text(e.name),
                ),
              )
              .toList(),
          value: state.locale,
          onChanged: (value) {
            context.read<SettingsBloc>().add(
                  SettingsEvent.changeLocale(
                    locale: value ?? ProductLocale.en.locale,
                  ),
                );
          },
        ),
      );

  @override
  Size get preferredSize => Size.fromHeight(height ?? 30);
}
