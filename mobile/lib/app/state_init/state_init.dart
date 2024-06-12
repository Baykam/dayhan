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
        /// auth states
        BlocProvider(create: (context) => PostPhoneBloc()),
        BlocProvider(create: (context) => PostTokenBloc()),

        /// default app states
        BlocProvider(
          create: (context) => SettingsBloc()
            ..add(const SettingsEvent.defaultTheme())
            ..add(const SettingsEvent.defaultLocale()),
        ),

        ///data create or update default state's
        BlocProvider(create: (context) => ProductReqBloc()),

        /// data transfer states
        BlocProvider(create: (context) => GetProductListBloc()),
        BlocProvider(create: (context) => SearchProductListBloc()),
        BlocProvider(create: (context) => GetProductByIdBloc()),
        BlocProvider(create: (context) => PostProductBloc()),
        BlocProvider(create: (context) => DeleteProductBloc()),
      ],
      child: child,
    );
  }
}
