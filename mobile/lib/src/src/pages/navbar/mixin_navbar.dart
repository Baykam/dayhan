part of 'navbar.dart';

mixin MixinNavBar on State<Navbar> {
  // int selectedIndex = 0;

  void selected(int value) =>
      context.read<NavbarBloc>().add(NavbarEvent.indexed(index: value));
  //  setState(() => selectedIndex = value);
}
