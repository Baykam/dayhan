import 'package:dayhan_mobile/src/application/index.dart';
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
    return Scaffold(
      body: IndexedStack(
        index: selectedIndex,
        children: const [
          HomePage(),
          SearchPage(),
          SettingsPage(),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: selectedIndex,
        onDestinationSelected: selected,
        destinations: [
          _nav(ProductIcons.home.icon, 'home'),
          _nav(ProductIcons.search.icon, 'search'),
          _nav(ProductIcons.settings.icon, 'settings'),
        ],
      ),
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
