// ignore_for_file: inference_failure_on_instance_creation

import 'dart:io';

import 'package:dayhan_mobile/src/application/index.dart';
import 'package:dayhan_mobile/src/infrastructure/index.dart';
import 'package:dayhan_mobile/src/src/utils/index.dart';
import 'package:dayhan_mobile/src/src/widgets/index.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

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
        title: const Text('Product add'),
        centerTitle: true,
      ),
      body: Padding(
        padding: Productpadding.h15.padding,
        child: BlocBuilder<ProductReqBloc, ProductReqState>(
          builder: (context, state) => Column(
            children: [
              const SizedBox(height: 15,),
              ProductTextFormFiled(
                hinttext: 'name',
                obscureText: false,
                controller: name,
                onChanged: onChangeName,
              ),
              const SizedBox(height: 5,),
              ProductTextFormFiled(
                hinttext: 'description',
                controller: description,
                obscureText: false,
                onChanged: onChangeDescription,
              ),
              const SizedBox(height: 5,),
              ProductTextFormFiled(
                hinttext: 'price',
                controller: price,
                obscureText: false,
                onChanged: onChangePrice,
              ),
              const SizedBox(height: 30,),
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
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    height: 150,
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
      ),
      bottomNavigationBar: Padding(
        padding: Productpadding.h15.padding + Productpadding.v15.padding,
        child: BlocSelector<ProductReqBloc, ProductReqState, Product>(
          selector: (state) {
            return state.product;
          },
          builder: (context, a) => FloatingActionButton(
              onPressed: () => addProduct(a),
              child: const Text('Add Product'),
            ),
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
            child: BlocConsumer<PostProductBloc, PostProductState>(
              builder: (context, state) => state.maybeWhen(
                orElse: ProductProgress.new,
                failed: (m) => ProductErrorWidget(error: m),
                success: (product) => const ProductSuccess(),
              ),
              listener: (BuildContext context, PostProductState state) {
                state.whenOrNull(
                  failed: (m) => Future.delayed(const Duration(seconds: 1))
                      .then((value) => Navigator.pop(context, false)),
                  success: (product) =>
                      Future.delayed(const Duration(seconds: 1)).then((value) {
                    Navigator.pop(context, true);
                    context.pop();
                    context
                        .read<GetProductListBloc>()
                        .add(const GetProductListEvent.started());
                  }),
                );
              },
            ),
          ),
        ),
      );
}
