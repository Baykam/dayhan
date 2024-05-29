part of 'otp.dart';

/// mixin for otp widget
mixin MixinOtp on State<Otp> {
  showOtp(BuildContext context);

  void onTap() {
    final kk = context.read<PostPhoneBloc>().state.whenOrNull(
          success: (key) => key,
        );
    if (kk == null) return;
    context.read<PostTokenBloc>().add(PostTokenEvent.postKey(key: kk));
    showOtp(context);
  }
}
