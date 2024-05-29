import 'package:dayhan_mobile/src/application/index.dart';
import 'package:dayhan_mobile/src/infrastructure/index.dart';
import 'package:dayhan_mobile/src/src/pages/home/home.dart';
import 'package:dayhan_mobile/src/src/pages/search/search.dart';
import 'package:dayhan_mobile/src/src/pages/settings/settings.dart';
import 'package:dayhan_mobile/src/src/utils/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'mixin_navbar.dart';
part 'widgets/appbar.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> with MixinNavBar {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsBloc, SettingsState>(
      builder: (context, state) => Scaffold(
        appBar: PreferredSize(
          preferredSize:
              Size.fromHeight(MediaQuery.sizeOf(context).width < 450 ? 100 : 0),
          child: ProductResponsive.build(
            context,
            AdaptAllView(
              phone: NavBarAppbar(
                state: state,
              ),
              tablet: const SizedBox(),
              desktop: const SizedBox(),
            ),
          ),
        ),
        body: Row(
          children: [
            ProductResponsive.build(
              context,
              AdaptAllView(
                phone: const SizedBox(),
                tablet: const SizedBox(),
                // tablet: NavigationRail(
                //   onDestinationSelected: selected,
                //   destinations: [
                //     ui(ProductIcons.home.icon, 'home'),
                //     ui(ProductIcons.search.icon, 'search'),
                //     ui(ProductIcons.settings.icon, 'settings'),
                //   ],
                //   selectedIndex: selectedIndex,
                // ),
                desktop: NavigationRail(
                  onDestinationSelected: selected,
                  destinations: [
                    ui(ProductIcons.home.icon, 'home'),
                    ui(ProductIcons.search.icon, 'search'),
                    ui(ProductIcons.settings.icon, 'settings'),
                  ],
                  selectedIndex: selectedIndex,
                ),
              ),
            ),
            IndexedStack(
              index: selectedIndex,
              children: const [
                HomePage(),
                SearchPage(),
                SettingsPage(),
              ],
            ),
          ],
        ),
        bottomNavigationBar: ProductResponsive.build(
          context,
          AdaptAllView(
            phone: NavigationBar(
              selectedIndex: selectedIndex,
              onDestinationSelected: selected,
              destinations: [
                _nav(ProductIcons.home.icon, 'home'),
                _nav(ProductIcons.search.icon, 'search'),
                _nav(ProductIcons.settings.icon, 'settings'),
              ],
            ),
            tablet: NavigationBar(
              selectedIndex: selectedIndex,
              onDestinationSelected: selected,
              destinations: [
                _nav(ProductIcons.home.icon, 'home'),
                _nav(ProductIcons.search.icon, 'search'),
                _nav(ProductIcons.settings.icon, 'settings'),
              ],
            ),
            desktop: const SizedBox(),
          ),
        ),
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
