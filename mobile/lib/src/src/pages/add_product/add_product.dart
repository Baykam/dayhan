import 'dart:io';

import 'package:dayhan_mobile/src/application/index.dart';
import 'package:dayhan_mobile/src/infrastructure/index.dart';
import 'package:dayhan_mobile/src/src/utils/index.dart';
import 'package:dayhan_mobile/src/src/widgets/index.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'mixin_add_product.dart';

final class AddProduct extends StatefulWidget {
  const AddProduct({super.key});

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> with MixinAddProduct {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('add Text Page'),
        centerTitle: true,
      ),
      body: BlocBuilder<ProductReqBloc, ProductReqState>(
        builder: (context, state) => Column(
          children: [
            ProductTextFormFiled(
              hinttext: 'name',
              controller: name,
              onChanged: (v) {
                context
                    .read<ProductReqBloc>()
                    .add(ProductReqEvent.name(name: v));
              },
            ),
            ProductTextFormFiled(
              hinttext: 'description',
              controller: description,
              onChanged: (v) {
                context
                    .read<ProductReqBloc>()
                    .add(ProductReqEvent.description(description: v));
              },
            ),
            ProductTextFormFiled(
              hinttext: 'price',
              controller: price,
              onChanged: (v) {
                context
                    .read<ProductReqBloc>()
                    .add(ProductReqEvent.price(price: double.tryParse(v) ?? 0));
              },
            ),
            Row(
              children: [
                SizedBox(
                  height: 50,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: imagePaths.length,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: SizedBox(
                          height: 50,
                          width: 50,
                          child: Image.file(
                            imagePaths[index],
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                FloatingActionButton(
                  onPressed: imagePick,
                  child: ProductIcons.add.toIcon(),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  height: 50,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: videoFiles.length,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: SizedBox(
                          height: 150,
                          width: 150,
                          child:
                              ProductFileVideoPlayer(file: videoFiles[index]),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                FloatingActionButton(
                  onPressed: videoPick,
                  child: ProductIcons.add.toIcon(),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: Productpadding.h15.padding + Productpadding.v15.padding,
        width: double.infinity,
        height: 120,
        child: BlocSelector<ProductReqBloc, ProductReqState, Product>(
          selector: (state) {
            return state.product;
          },
          builder: (context, a) {
            return TextButton(
              onPressed: () => addProduct(a),
              child: const Text('Add Product'),
            );
          },
        ),
      ),
    );
  }

  @override
  showCreateproduct(BuildContext context) => showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: SizedBox(
            height: 250,
            child: BlocBuilder<PostProductBloc, PostProductState>(
              builder: (context, state) => state.maybeWhen(
                orElse: ProductProgress.new,
                failed: (m) => ProductErrorWidget(error: m),
                success: (product) => const ProductSuccess(),
              ),
            ),
          ),
        ),
      );
}
