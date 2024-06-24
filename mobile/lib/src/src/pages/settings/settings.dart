import 'package:dayhan_mobile/app/router/path.dart';
import 'package:dayhan_mobile/src/application/index.dart';
import 'package:dayhan_mobile/src/infrastructure/index.dart';
import 'package:dayhan_mobile/src/src/utils/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

part 'mixin_settings.dart';

final class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> with MixinSettings {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Settings'),
      ),
      body: BlocBuilder<SettingsBloc, SettingsState>(
        builder: (context, settings) {
          return SingleChildScrollView(
            child: Padding(
              padding: Productpadding.h15.padding,
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  ListTile(
                    title: Text(
                      'Please check the dark or light mode theme',
                      style: ProductTextStyle.i.t12.copyWith(
                        color: settings.switchData ? Colors.white : Colors.black,
                      ),
                    ),
                    trailing: Switch.adaptive(
                      value: settings.switchData,
                      onChanged: selectTheme,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ListTile(
                    title: Text(
                      'Please select product Language',
                      style: ProductTextStyle.i.t12.copyWith(
                          color:
                              settings.switchData ? Colors.white : Colors.black),
                    ),
                    trailing: DropdownButton(
                      padding: Productpadding.h15.padding,
                      borderRadius: BorderRadius.circular(20),
                      value: settings.locale,
                      underline: const SizedBox(),
                      items: [
                        ...ProductLocale.values.map(
                          (e) => DropdownMenuItem(
                            value: e.locale,
                            child: Text(e.name),
                          ),
                        ),
                      ],
                      onChanged: selectLocale,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    padding: Productpadding.h15.padding,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: logOut,
                      child: const Text('Log Out'),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
