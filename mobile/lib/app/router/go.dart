import 'package:dayhan_mobile/app/router/observer.dart';
import 'package:dayhan_mobile/app/router/path.dart';
import 'package:dayhan_mobile/src/infrastructure/index.dart';
import 'package:dayhan_mobile/src/src/pages/auth/auth.dart';
import 'package:dayhan_mobile/src/src/pages/error/error.dart';
import 'package:dayhan_mobile/src/src/pages/navbar/navbar.dart';
import 'package:dayhan_mobile/src/src/pages/otp/otp.dart';
import 'package:dayhan_mobile/src/src/utils/index.dart';
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
    initialLocation: RoutePath.navbar.path,
    errorBuilder: (context, state) =>
        ErrorPage(mes: state.error?.message ?? ''),
    observers: [
      GoRouterObserver(),

      /// if firebase analytics give here observer
    ],
    redirect: (context, state) async {
      final token =
          await CacheManager.shared.getString(CachePaths.accessKey.path);
      if (token == null || token.isEmpty) {
        if (state.fullPath?.contains('otp') ?? false) return '/auth/otp';
        return '/auth';
      }
      return null;
    },
    routes: [
      auth,
      GoRoute(
        path: RoutePath.navbar.path,
        name: RoutePath.navbar.name,
        builder: (context, state) => const Navbar(),
      ),
    ],
  );

  /// navbar router
  static GoRoute get navbar => GoRoute(
        path: RoutePath.navbar.path,
        name: RoutePath.navbar.name,
        builder: (context, state) => const Navbar(),
      );

  /// auth router
  static GoRoute get auth => GoRoute(
        path: RoutePath.auth.path,
        name: RoutePath.auth.name,
        builder: (context, state) => const Auth(),
        routes: [
          GoRoute(
            path: RoutePath.otp.path,
            name: RoutePath.otp.name,
            builder: (context, state) => const Otp(),
          ),
        ],
      );
}
