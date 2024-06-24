import 'package:dayhan_mobile/src/src/utils/index.dart';
import 'package:dayhan_mobile/src/src/widgets/index.dart';
import 'package:dayhan_mobile/src/src/widgets/product_result.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/index.dart';
import '../../../infrastructure/index.dart';

part 'mixin_search.dart';

final class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> with MixinSearchPage {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Search'),
        bottom: PreferredSize(
          preferredSize: Size.copy(const Size(double.infinity, 80)),
          child: Container(
            padding: Productpadding.h15.padding + Productpadding.v15.padding,
            alignment: Alignment.center,
            child: ProductTextFormFiled(
              obscureText: false,
              prefix: CloseButton(
                onPressed: clearText,
              ),
              hinttext: 'search for name',
              controller: searchtext,
              titleCenter: true,
            ),
          ),
        ),
      ),
      body: RefreshIndicator.adaptive(
        onRefresh: () async=> context.read<SearchProductListBloc>()
            .add(const SearchProductListEvent.search(query: '')),
        child: BlocBuilder<SearchProductListBloc, SearchProductListState>(
          builder: (context, state) => state.maybeWhen(
            orElse: ProductProgress.new,
            failed: Text.new,
            success: (p) => ListView.separated(
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) => Padding(
                padding: Productpadding.h15.padding,
                child: ProductListResult(
                  product: p[index],
                  ontap: () => onTapProduct(product: p[index]),
                ),
              ),
              separatorBuilder: (context, index) => const Divider(),
              itemCount: p.length,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Future<dynamic> showProductbyId(BuildContext context) => showDialog(
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
}
