import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reuse/features/home/data/enums/post_like_status_enum.dart';

part 'post_like_response_model.freezed.dart';
part 'post_like_response_model.g.dart';

@freezed
abstract class PostLikeResponseModel with _$PostLikeResponseModel {
  const factory PostLikeResponseModel({
    required int id, 
    required String userId,
    required int postId, 
    required DateTime createdAt,
    required PostLikeStatusEnum status
  }) = _PostLikeResponseModel;

  factory PostLikeResponseModel.fromJson(Map<String, dynamic> json) =>
    _$PostLikeResponseModelFromJson(json);
}
