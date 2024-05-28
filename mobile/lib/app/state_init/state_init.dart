import 'package:dayhan_mobile/src/application/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Application's  State init
final class StateInitializer extends StatelessWidget {
  ///constructor this class
  const StateInitializer({required this.child, super.key});

  /// Widget [child]
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => PostPhoneBloc()),
        BlocProvider(
          create: (context) => SettingsBloc()
            ..add(const SettingsEvent.defaultTheme())
            ..add(const SettingsEvent.defaultLocale()),
        ),
      ],
      child: child,
    );
  }
}
