import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState.error({String? msg}) = Error;
  const factory SignInState.awaiting() = Awaiting;
  const factory SignInState.success() = Success;
  const factory SignInState() = _SignInState;
}
