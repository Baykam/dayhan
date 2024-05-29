part of 'auth.dart';

/// mixin for Auth Widget
mixin MixinAuth on State<Auth> {
  void onTap() {
    context.goNamed(RoutePath.otp.name);
    context.read<PostPhoneBloc>().add(
          PostPhoneEvent.phoneSend(
            phone: context.read<PostPhoneBloc>().phone.text,
          ),
        );
  }
}
