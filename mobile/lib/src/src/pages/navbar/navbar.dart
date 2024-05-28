import 'package:dayhan_mobile/src/application/index.dart';
import 'package:dayhan_mobile/src/src/utils/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'mixin_navbar.dart';

final class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> with MixinNavBar {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsBloc, SettingsState>(
      builder: (context, state) => Scaffold(
        appBar: AppBar(
          actions: [
            Switch.adaptive(
              value: state.switchData,
              onChanged: (_) {
                context.read<SettingsBloc>().add(const SettingsEvent.theme());
              },
            ),
          ],
          bottom: PreferredSize(
              preferredSize: const Size.fromHeight(30),
              child: BlocBuilder<SettingsBloc, SettingsState>(
                builder: (context, state) {
                  return DropdownButton(
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
                  );
                },
              )),
        ),
      ),
    );
  }
}
