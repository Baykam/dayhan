import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'navbar_event.dart';
part 'navbar_state.dart';
part 'navbar_bloc.freezed.dart';

final class NavbarBloc extends Bloc<NavbarEvent, NavbarState> {
  NavbarBloc() : super(_Initial(index: 0)) {
    on<_Indexed>(_onIndexed);
  }

  void _onIndexed(_Indexed event, Emitter<NavbarState> emit) {
    emit(state.copyWith(index: event.index));
  }
}
