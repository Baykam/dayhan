part of 'navbar_bloc.dart';

@freezed
class NavbarEvent with _$NavbarEvent {
  const factory NavbarEvent.indexed({required int index}) = _Indexed;
}
