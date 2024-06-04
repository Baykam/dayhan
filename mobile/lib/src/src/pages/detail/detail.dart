import 'package:dayhan_mobile/src/application/index.dart';
import 'package:dayhan_mobile/src/src/widgets/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_framework/responsive_framework.dart';

final class DetailPage extends StatelessWidget {
  const DetailPage({super.key, required this.id});
  final int id;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product $id'),
      ),
      body: BlocBuilder<GetProductByIdBloc, GetProductByIdState>(
        builder: (context, state) => state.maybeWhen(
          orElse: ProductProgress.new,
          failed: (m) => ProductErrorWidget(error: m),
          success: (product) => SingleChildScrollView(
            child: Column(
              children: [
                if (ResponsiveBreakpoints.of(context).isDesktop)
                  const Text('here is Change desktop ui'),
                if (ResponsiveBreakpoints.of(context).smallerOrEqualTo(PHONE))
                  const Text('here you change the ui for phone'),
                Text(product.description ?? ''),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
