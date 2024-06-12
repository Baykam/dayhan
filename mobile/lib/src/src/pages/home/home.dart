// ignore_for_file: unnecessary_await_in_return, inference_failure_on_instance_creation

import 'package:dayhan_mobile/app/router/path.dart';
import 'package:dayhan_mobile/src/application/index.dart';
import 'package:dayhan_mobile/src/infrastructure/index.dart';
import 'package:dayhan_mobile/src/src/utils/index.dart';
import 'package:dayhan_mobile/src/src/widgets/index.dart';
import 'package:dayhan_mobile/src/src/widgets/product_result.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

part 'mixin_home.dart';

final class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with MixinHomePage {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Home'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: goAddProduct,
          child: ProductIcons.add.toIcon(),
        ),
        body: RefreshIndicator.adaptive(
          onRefresh: () async => context
              .read<GetProductListBloc>()
              .add(const GetProductListEvent.started()),
          child: BlocBuilder<GetProductListBloc, GetProductListState>(
            builder: (context, state) => state.maybeWhen(
              orElse: ProductProgress.new,
              failed: Text.new,
              success: (p) => ListView.separated(
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) => _successWidget(p[index]),
                itemCount: p.length,
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(),
              ),
            ),
          ),
        ),
      );

  Widget _successWidget(Product p) => Dismissible(
        key: Key(p.id.toString()),
        confirmDismiss: (direction) => conFirmDismiss(direction, p),
        child: ProductListResult(
          product: p,
          ontap: () => onTapProduct(product: p),
        ),
      );

  @override
  showProductbyId(BuildContext context) => showDialog(
        context: context,
        builder: (context) => Dialog(
          child: SizedBox(
            height: 300,
            child: BlocBuilder<GetProductByIdBloc, GetProductByIdState>(
              builder: (context, state) => state.maybeWhen(
                orElse: ProductProgress.new,
                failed: (m) => ProductErrorWidget(error: m),
                success: (product) => Column(
                  children: [
                    Text('Product id : ${product.id}'),
                    const SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      height: 100,
                      child: ProductCarouselSlider(
                        urls:
                            product.images?.map((e) => e.url ?? '').toList() ??
                                [],
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text('Description : ${product.description}'),
                  ],
                ),
              ),
            ),
          ),
        ),
      );

  @override
  Future<bool?> showConfirmDismiss(BuildContext context) => showDialog<bool>(
        context: context,
        builder: (context) => Dialog(
          child: SizedBox(
            height: 300,
            child: BlocConsumer<DeleteProductBloc, DeleteProductState>(
              builder: (context, state) => state.maybeWhen(
                orElse: ProductProgress.new,
                failed: (m) => ProductErrorWidget(error: m),
                success: (m) =>
                    Assets.lottie.accepted.lottie(fit: BoxFit.cover),
              ),
              listener: (context, state) => state.whenOrNull(
                failed: (m) async =>
                    await Future.delayed(const Duration(seconds: 1))
                        .then((value) => Navigator.pop(context, false)),
                success: (m) async =>
                    await Future.delayed(const Duration(seconds: 1))
                        .then((value) => Navigator.pop(context, true)),
              ),
            ),
          ),
        ),
      );

  @override
  Future<dynamic> showUpdateProduct(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) => Dialog(
        child: SizedBox(
          height: 300,
          child: BlocConsumer<PostProductBloc, PostProductState>(
            builder: (context, state) => state.maybeWhen(
              orElse: ProductProgress.new,
              failed: (m) => ProductErrorWidget(error: m),
              success: (m) => Assets.lottie.accepted.lottie(fit: BoxFit.cover),
            ),
            listener: (context, state) => state.whenOrNull(
              failed: (m) async =>
                  await Future.delayed(const Duration(seconds: 1))
                      .then((value) => Navigator.pop(context, false)),
              success: (m) async =>
                  await Future.delayed(const Duration(seconds: 1))
                      .then((value) {
                Navigator.pop(context, true);
                context
                    .read<GetProductListBloc>()
                    .add(const GetProductListEvent.started());
                return null;
              }),
            ),
          ),
        ),
      ),
    );
  }
}
