import 'package:dayhan_mobile/app/router/path.dart';
import 'package:dayhan_mobile/src/infrastructure/index.dart';
import 'package:dayhan_mobile/src/src/utils/index.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('settings'),
          ElevatedButton(
            onPressed: () async {
              await CacheManager.shared.remove(CachePaths.accessKey.path);
              context.pushReplacementNamed(RoutePath.auth.name);
            },
            child: Text('Log Out'),
          ),
        ],
      ),
    );
  }
}
