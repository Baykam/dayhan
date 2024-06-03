part of 'home.dart';

mixin MixinHomePage on State<HomePage> {
  @override
  void initState() {
    initFunc();
    super.initState();
  }

  void initFunc() {
    context.read<GetProductListBloc>().add(const GetProductListEvent.started());
    context.read<GetProductListBloc>().search.addListener(search);
  }

  void clearText() {
    context.read<GetProductListBloc>().search.clear();
    context.read<GetProductListBloc>().add(const GetProductListEvent.started());
  }

  @override
  void dispose() {
    super.dispose();
  }

  void search() {
    context.read<GetProductListBloc>().add(const GetProductListEvent.search());
  }
}
