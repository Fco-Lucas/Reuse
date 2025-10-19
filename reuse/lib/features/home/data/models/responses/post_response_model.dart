import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reuse/features/home/data/enums/post_status_enum.dart';

part 'post_response_model.freezed.dart';
part 'post_response_model.g.dart';

@freezed
abstract class PostResponseModel with _$PostResponseModel {
  const factory PostResponseModel({
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
  }) = _PostResponseModel;

  factory PostResponseModel.fromJson(Map<String, dynamic> json) =>
    _$PostResponseModelFromJson(json);
}
