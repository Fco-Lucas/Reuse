import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_user_list_response_model.freezed.dart';
part 'post_user_list_response_model.g.dart';

@freezed
abstract class PostUserListResponseModel with _$PostUserListResponseModel {
  const factory PostUserListResponseModel({
    required int id, 
    required String? userId, 
    required String? userName, 
    required String? restaurantId, 
    required String? restaurantName, 
    required String name, 
    required DateTime createdAt, 
    required String address, 
    required String description, 
    required String? imageUrl,
  }) = _PostUserListResponseModel;

  factory PostUserListResponseModel.fromJson(Map<String, dynamic> json) =>
    _$PostUserListResponseModelFromJson(json);
}
