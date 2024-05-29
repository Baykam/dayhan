import 'package:flutter/material.dart';

final class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('search'),
          // ...List.generate(
          //   6,
          //   (index) => Container(
          //     color: Colors.blue,
          //     height: 100,
          //   ),
          // ),
        ],
      ),
    );
  }
}
