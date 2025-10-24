import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_users_redemptions_response_model.freezed.dart';
part 'post_users_redemptions_response_model.g.dart';

@freezed
abstract class PostUsersRedemptionsResponseModel with _$PostUsersRedemptionsResponseModel {
  const factory PostUsersRedemptionsResponseModel({
    required int postRedemptionId,
    required int postId,
    required DateTime redemptionAt,
    required String? imageUrl,
    required String postName,
    required String? restaurantName,
    required String? userName,
  }) = _PostUsersRedemptionsResponseModel;

  factory PostUsersRedemptionsResponseModel.fromJson(Map<String, dynamic> json) =>
    _$PostUsersRedemptionsResponseModelFromJson(json);
}
