import 'package:dayhan_mobile/app/router/go.dart';
import 'package:dayhan_mobile/app/state_init/state_init.dart';
import 'package:dayhan_mobile/src/application/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

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
          );
        },
      ),
    );
  }
}
