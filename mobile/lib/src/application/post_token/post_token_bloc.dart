import 'package:bloc/bloc.dart';
import 'package:dayhan_mobile/src/domain/index.dart';
import 'package:dayhan_mobile/src/infrastructure/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_token_event.dart';
part 'post_token_state.dart';
part 'post_token_bloc.freezed.dart';

class PostTokenBloc extends Bloc<PostTokenEvent, PostTokenState> {
  PostTokenBloc()
      : _iPostToken = PostToken(),
        super(_Initial()) {
    on<_PostKey>(_onPostKey);
  }

  final IPostToken _iPostToken;

  Future<void> _onPostKey(_PostKey event, Emitter<PostTokenState> emit) async {
    emit(const _Loading());

    try {
      final res = await _iPostToken.postToken(key: event.key);
      res.fold(
        (l) => emit(_Failed(m: l.error ?? '')),
        (r) => emit(_Success(token: r)),
      );
    } catch (e) {
      print(e.toString());
      emit(_Failed(m: e.toString()));
    }
  }
}
