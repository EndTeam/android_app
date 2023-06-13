import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState.error({String? msg}) = Error;
  const factory SignUpState.awaiting() = Awaiting;
  const factory SignUpState.success() = Success;
  const factory SignUpState() = _SignUpState;
}
