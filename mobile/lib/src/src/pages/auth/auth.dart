import 'package:flutter/material.dart';

part 'mixin_auth.dart';

/// auth widget
final class Auth extends StatefulWidget {
  const Auth({super.key});

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> with MixinAuth {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
