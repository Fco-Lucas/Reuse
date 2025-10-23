import 'package:freezed_annotation/freezed_annotation.dart';

part 'redemption_post_state.freezed.dart';

@freezed
sealed class RedemptionPostState with _$RedemptionPostState {
  const factory RedemptionPostState.initial() = _Initial;
  const factory RedemptionPostState.loading() = _Loading;
  const factory RedemptionPostState.success(String message) = _Success;
  const factory RedemptionPostState.error(String message) = _Error;
}