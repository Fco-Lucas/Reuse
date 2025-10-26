import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reuse/features/home/data/enums/post_status_enum.dart';

part 'post_list_response_model.freezed.dart';
part 'post_list_response_model.g.dart';

@freezed
abstract class PostListResponseModel with _$PostListResponseModel {
  const factory PostListResponseModel({
    required int id, 
    required bool liked,
    required String? userId, 
    required String? userName, 
    required String? restaurantId, 
    required String? restaurantName, 
    required String name,
    required int amount,
    required int amountRedemption,
    required DateTime validUntil,
    required String? imageUrl,
    required PostStatusEnum status,
  }) = _PostListResponseModel;

  factory PostListResponseModel.fromJson(Map<String, dynamic> json) =>
    _$PostListResponseModelFromJson(json);
}
