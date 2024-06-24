import 'dart:async';
import 'dart:developer';

import 'package:dayhan_mobile/src/infrastructure/index.dart';
import 'package:dayhan_mobile/src/src/utils/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _tag = 'AppBlocObserver';

/// [Bloc] observer cache
final class AppBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    log('onChange(${bloc.runtimeType}, $change)', name: _tag);
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    log('onError(${bloc.runtimeType}, $error, $stackTrace)', name: _tag);
    super.onError(bloc, error, stackTrace);
  }
}

/// application initialize here
final class ApplicationInitialize {
  /// where run app function in project
  Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
    FlutterError.onError = (details) {
      log(details.exceptionAsString());
    };

    await runZonedGuarded(
      () async {
        // ignore: deprecated_member_use
        await BlocOverrides.runZoned(
          () async {
            await _initialize();
            runApp(await builder());
          },
          blocObserver: AppBlocObserver(),
        );
      },
      (error, stackTrace) => log(error.toString()),
    );
  }

  ///initialize method for app when starting
  Future<void> _initialize() async {
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: ProductColor.i.transParent,
      ),
    );

    ///Firebase application integration
    {}

    ///Cache integration application
    {
      await SharedPreferences.getInstance();
      final as = await getApplicationCacheDirectory();
      await Hive.initFlutter(as.path);

      Hive
          ..registerAdapter(ProductAdapter())
          ..registerAdapter(FileSendAdapter());

      await Hive.openBox<Product>(CachePaths.productCache.path);
    }

    await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
    );
  }
}
