part of 'otp.dart';

/// mixin for otp widget
mixin MixinOtp on State<Otp> {
  Future<dynamic> showOtp(BuildContext context);
  final otptext = TextEditingController();
  final key = GlobalKey<FormState>();

  void onTap() {
    final kk = context.read<PostPhoneBloc>().state.whenOrNull(
          success: (key) => key,
        );
    if (kk == null) return;
    if (key.currentState!.validate()) {
      context
          .read<PostTokenBloc>()
          .add(PostTokenEvent.postKey(key: kk, otpCode: otptext.text));
      showOtp(context);
    }
  }

  String? validateText(String? value) {
    if (value == null || value.isEmpty) return 'please write 6 digits';
    if (value != '123456') return 'testable digit is 123456';
    return null;
  }
}
