import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reuse/features/redemptions/data/models/responses/post_users_redemptions_response_model.dart';

part 'post_list_users_redemptions_response_model.freezed.dart';
part 'post_list_users_redemptions_response_model.g.dart';

@freezed
abstract class PostListUsersRedemptionsResponseModel with _$PostListUsersRedemptionsResponseModel {
  const factory PostListUsersRedemptionsResponseModel({
    required List<PostUsersRedemptionsResponseModel> content,
    required bool first,
    required bool end,
    required int page,
    required int size,
    required int pageElements,
    required int totalPages,
    required int totalElements,
  }) = _PostListUsersRedemptionsResponseModel;

  factory PostListUsersRedemptionsResponseModel.fromJson(Map<String, dynamic> json) =>
    _$PostListUsersRedemptionsResponseModelFromJson(json);
}
