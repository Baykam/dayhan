import 'package:dayhan_mobile/app/router/go.dart';
import 'package:dayhan_mobile/app/state_init/state_init.dart';
import 'package:dayhan_mobile/src/application/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:responsive_framework/responsive_framework.dart';

/// Start Widget
final class App extends StatelessWidget {
  /// constructor this Widget
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return StateInitializer(
      child: BlocBuilder<SettingsBloc, SettingsState>(
        builder: (context, state) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: true,
            routerConfig: ProductRouter().router,
            theme: state.theme,
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              DefaultMaterialLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
              DefaultMaterialLocalizations.delegate,
              DefaultWidgetsLocalizations.delegate,
            ],
            builder: (context, child) {
              return ResponsiveBreakpoints.builder(
                child: BouncingScrollWrapper.builder(
                  context,
                  child!,
                  dragWithMouse: true,
                ),
                // child: Builder(
                //   builder: (context) {
                //     return ResponsiveScaledBox(
                //       width: ResponsiveValue<double>(
                //         context,
                //         conditionalValues: const [
                //           Condition.equals(name: MOBILE, value: 450),
                //           Condition.between(start: 800, end: 1100, value: 800),
                //           Condition.between(start: 1000, end: 1200, value: 700),
                //         ],
                //       ).value,
                //       child: child!,
                //     );
                //   },
                // ),
                breakpoints: const [
                  Breakpoint(start: 0, end: 450, name: MOBILE),
                  Breakpoint(start: 451, end: 800, name: TABLET),
                  Breakpoint(start: 801, end: 1920, name: DESKTOP),
                  Breakpoint(start: 1921, end: double.infinity, name: '4K'),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
