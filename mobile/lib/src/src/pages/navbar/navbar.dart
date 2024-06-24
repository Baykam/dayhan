import 'package:dayhan_mobile/src/application/index.dart';
import 'package:dayhan_mobile/src/src/pages/cache/cache.dart';
import 'package:dayhan_mobile/src/src/pages/home/home.dart';
import 'package:dayhan_mobile/src/src/pages/search/search.dart';
import 'package:dayhan_mobile/src/src/pages/settings/settings.dart';
import 'package:dayhan_mobile/src/src/utils/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'mixin_navbar.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> with MixinNavBar {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavbarBloc, NavbarState>(
      builder: (context, nav) {
        return Scaffold(
          body: IndexedStack(
            index: nav.index,
            children: const [
              HomePage(),
              SearchPage(),
              CachePage(),
              SettingsPage(),
            ],
          ),
          bottomNavigationBar: NavigationBar(
            selectedIndex: nav.index,
            onDestinationSelected: selected,
            destinations: [
              _nav(ProductIcons.home.icon, 'home'),
              _nav(ProductIcons.search.icon, 'search'),
              _nav(ProductIcons.cache.icon, 'cache'),
              _nav(ProductIcons.settings.icon, 'settings'),
            ],
          ),
        );
      },
    );
  }

  NavigationRailDestination ui(IconData icon, String label) =>
      NavigationRailDestination(
        icon: Icon(icon),
        label: Text(label),
      );

  NavigationDestination _nav(IconData icon, String label) {
    return NavigationDestination(icon: Icon(icon), label: label);
  }
}
