// ignore_for_file: public_member_api_docs

import 'package:dayhan_mobile/src/domain/i_post_phone.dart';
import 'package:dayhan_mobile/src/infrastructure/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_phone_event.dart';
part 'post_phone_state.dart';
part 'post_phone_bloc.freezed.dart';

final class PostPhoneBloc extends Bloc<PostPhoneEvent, PostPhoneState> {
  PostPhoneBloc()
      : _phone = PostPhone(),
        super(_Initial()) {
    on<_PhoneSend>(_onPhoneSend);
  }

  final phone = TextEditingController();

  final IPostPhone _phone;

  Future<void> _onPhoneSend(
      _PhoneSend event, Emitter<PostPhoneState> emit) async {
    emit(const _Loading());

    try {
      final res = await _phone.postPhone(phone: event.phone);
      res.fold(
        (l) => emit(_Failed(m: l.error ?? '')),
        (r) => emit(
          _Success(key: r),
        ),
      );
    } catch (e) {
      print(e.toString());
      emit(_Failed(m: e.toString()));
    }
  }
}
