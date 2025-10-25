import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reuse/features/home/data/models/responses/post_user_list_response_model.dart';

part 'post_user_list_pageable_response_model.freezed.dart';
part 'post_user_list_pageable_response_model.g.dart';

@freezed
abstract class PostUserListPageableResponseModel with _$PostUserListPageableResponseModel {
  const factory PostUserListPageableResponseModel({
    required List<PostUserListResponseModel> content,
    required bool first,
    required bool end,
    required int page,
    required int size,
    required int pageElements,
    required int totalPages,
    required int totalElements,
  }) = _PostUserListPageableResponseModel;

  factory PostUserListPageableResponseModel.fromJson(Map<String, dynamic> json) =>
    _$PostUserListPageableResponseModelFromJson(json);
}
