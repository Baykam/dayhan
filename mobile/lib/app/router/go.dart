import 'package:dayhan_mobile/app/router/observer.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// Product's Router initialize class
final class ProductRouter {
  static final GlobalKey<NavigatorState> _key = GlobalKey<NavigatorState>();

  /// Global key for [/] path
  GlobalKey<NavigatorState> get key => _key;

  /// GoRouter data
  GoRouter router = GoRouter(
    navigatorKey: _key,
    observers: [GoRouterObserver()],
    routes: [
      auth,
    ],
  );

  /// auth router
  static GoRoute get auth => GoRoute(path: '');
}
