import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Application 's  State initilaizer
final class StateInitializer extends StatelessWidget {
  ///
  const StateInitializer({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [],
      child: child,
    );
  }
}
