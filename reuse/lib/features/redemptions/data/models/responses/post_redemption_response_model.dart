import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reuse/features/redemptions/data/enums/post_redemption_enum.dart';

part 'post_redemption_response_model.freezed.dart';
part 'post_redemption_response_model.g.dart';

@freezed
abstract class PostRedemptionResponseModel with _$PostRedemptionResponseModel {
  const factory PostRedemptionResponseModel({
    required int id, 
    required String userId,
    required int postId, 
    required DateTime createdAt, 
    required PostRedemptionEnum status,
  }) = _PostRedemptionResponseModel;

  factory PostRedemptionResponseModel.fromJson(Map<String, dynamic> json) =>
    _$PostRedemptionResponseModelFromJson(json);
}
