import 'package:dayhan_mobile/app/router/go.dart';
import 'package:dayhan_mobile/app/state_init/state_init.dart';
import 'package:dayhan_mobile/src/src/utils/index.dart';
import 'package:flutter/material.dart';

/// Start Widget
final class App extends StatelessWidget {
  /// constructor this Widget
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return StateInitializer(
      child: MaterialApp.router(
        debugShowCheckedModeBanner: true,
        routerConfig: ProductRouter().router,
        theme: ProductLightTheme().themeData,
      ),
    );
  }
}
