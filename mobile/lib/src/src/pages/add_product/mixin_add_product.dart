part of 'add_product.dart';

mixin MixinAddProduct on State<AddProduct> {
  final price = TextEditingController();
  final description = TextEditingController();
  final name = TextEditingController();
  List<File> imagePaths = [];
  List<File> videoFiles = [];

  Future<dynamic> showCreateproduct(BuildContext context);

  void addProduct(Product product) {
    context.read<PostProductBloc>().add(
          PostProductEvent.create(product: product),
        );
    showCreateproduct(context);
  }

  void imagePick() async {
    final images = await ProductFilePickerFuncs().pickMediaFile(
      type: FileType.image,
    );
    if (images == null || images.isEmpty) return;
    final selectedFiles = await ProductFilePickerFuncs().saveImage(images);
    if (selectedFiles == null) return;
    setState(() {
      imagePaths = selectedFiles;
    });
    await ProductFilePickerFuncs().fileConvertToString(selectedFiles).then(
          (value) => context
              .read<ProductReqBloc>()
              .add(ProductReqEvent.images(images: value)),
        );
  }

  Future<void> videoPick() async {
    final videos =
        await ProductFilePickerFuncs().pickMediaFile(type: FileType.video);
    if (videos == null || videos.isEmpty) return;
    final videoPP = await ProductFilePickerFuncs().saveImage(videos);
    if (videoPP == null) return;
    setState(() {
      videoFiles = videoPP;
    });
    await ProductFilePickerFuncs().fileConvertToString(videoPP).then(
          (value) => context
              .read<ProductReqBloc>()
              .add(ProductReqEvent.videos(videos: value)),
        );
  }
}
