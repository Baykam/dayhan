part of 'search.dart';

mixin MixinSearchPage on State<SearchPage> {
  final searchtext = TextEditingController();
  @override
  void initState() {
    initFunc();
    super.initState();
  }

  void initFunc() {
    context
        .read<SearchProductListBloc>()
        .add(const SearchProductListEvent.search(query: ''));
    searchtext.addListener(search);
  }

  void clearText() {
    searchtext.clear();
    context
        .read<SearchProductListBloc>()
        .add(const SearchProductListEvent.search(query: ''));
  }

  @override
  void dispose() {
    searchtext.removeListener(search);
    super.dispose();
  }

  void search() {
    context
        .read<SearchProductListBloc>()
        .add(SearchProductListEvent.search(query: searchtext.text));
  }

  Future<dynamic> showProductbyId(BuildContext context);
  void onTapProduct({required Product product}) {
    context
        .read<GetProductByIdBloc>()
        .add(GetProductByIdEvent.byId(id: product.id ?? 0));
    showProductbyId(context);
  }
}
