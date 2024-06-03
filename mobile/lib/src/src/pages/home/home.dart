import 'package:dayhan_mobile/src/application/index.dart';
import 'package:dayhan_mobile/src/infrastructure/index.dart';
import 'package:dayhan_mobile/src/src/utils/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'mixin_home.dart';

final class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with MixinHomePage {
  @override
  Widget build(BuildContext context) => getProductList();
}

Widget getProductList() => BlocBuilder<GetProductListBloc, GetProductListState>(
      builder: (context, state) => state.maybeWhen(
        orElse: () => Assets.lottie.errorLottie.lottie(),
        failed: (m) => Center(
          child: Text(m),
        ),
        success: (p) => ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) => _successWidget(p[index]),
          itemCount: p.length,
          separatorBuilder: (BuildContext context, int index) =>
              const Divider(),
        ),
      ),
    );

Widget _successWidget(Product p) => ListTile(
      title: Text(p.description ?? ''),
      subtitle: Text(p.price.toString()),
    );
