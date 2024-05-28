part  of 'navbar.dart';

mixin MixinNavBar on State<Navbar>{

  bool d = false;
  @override
  void initState() {
    // initFunc();
    super.initState();
  }


  void initFunc(){
    bool s = context.read<SettingsBloc>().state.theme == ProductLightTheme().themeData;
    d = s;
  }
}