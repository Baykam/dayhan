import 'package:flutter/material.dart';

final class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('settings'),
          ...List.generate(
            6,
            (index) => Container(
              color: Colors.blue,
              height: 100,
            ),
          ),
        ],
      ),
    );
  }
}
