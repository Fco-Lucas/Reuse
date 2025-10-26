import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reuse/features/home/data/enums/post_status_enum.dart';
import 'package:reuse/features/home/data/models/responses/post_list_response_model.dart';

part 'post_response_model.freezed.dart';
part 'post_response_model.g.dart';

@freezed
abstract class PostResponseModel with _$PostResponseModel {
  const PostResponseModel._();

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
    required DateTime createdAt,
    required String address,
    required String? description,
    required String? imageUrl,
    required PostStatusEnum status,
  }) = _PostResponseModel;

  factory PostResponseModel.fromJson(Map<String, dynamic> json) =>
    _$PostResponseModelFromJson(json);

  /// Converte este modelo de detalhe (PostResponseModel) para 
  /// o modelo de lista (PostListResponseModel) esperado pelo homeController.
  PostListResponseModel toPostListResponseModel() {
    return PostListResponseModel(
      id: id,
      liked: liked,
      userId: userId,
      userName: userName,
      restaurantId: restaurantId,
      restaurantName: restaurantName,
      name: name,
      amount: amount,
      amountRedemption: amountRedemption,
      validUntil: validUntil,
      imageUrl: imageUrl,
      status: status,
    );
  }
}
