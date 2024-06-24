import 'package:dayhan_mobile/src/application/index.dart';
import 'package:dayhan_mobile/src/infrastructure/index.dart';
import 'package:dayhan_mobile/src/src/utils/enum/index.dart';
import 'package:dayhan_mobile/src/src/widgets/product_result.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'mixin_cache.dart';

final class CachePage extends StatefulWidget {
  const CachePage({super.key});

  @override
  State<CachePage> createState() => _CachePageState();
}

class _CachePageState extends State<CachePage> with MixinCachePage {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cache Page'),
        centerTitle: true,
      ),
      body: BlocBuilder<CacheBloc, CacheState>(
        builder: (context, state) => state.products.isEmpty
            ? const Center(child: Text('List Empty'))
            : ListView.separated(
                itemBuilder: (context, index) => Padding(
                  padding: Productpadding.h15.padding,
                  child: Dismissible(
                    key: Key(state.products[index].id.toString()),
                    confirmDismiss: deleteProduct,
                    onDismissed: (direction) =>
                        deleteFunc(direction, state.products[index]),
                    child: ProductListResult(
                      product: state.products[index],
                      ontap: () {},
                    ),
                  ),
                ),
                separatorBuilder: (_, __) => const Divider(),
                itemCount: state.products.length,
              ),
      ),
    );
  }

  @override
  Future<bool?> isAcceptedDelete(BuildContext context) => showDialog<bool>(
        context: context,
        builder: (context) => Dialog(
          child: SizedBox(
            height: 250,
            child: Column(
              children: [
                const Text(' Please delete confirm'),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    TextButton(
                      onPressed: () => Navigator.pop(context, false),
                      child: const Text('No'),
                    ),
                    TextButton(
                      onPressed: () => Navigator.pop(context, true),
                      child: const Text('Yes'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
}
