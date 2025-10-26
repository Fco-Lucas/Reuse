// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_users_redemptions_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PostUsersRedemptionsResponseModel _$PostUsersRedemptionsResponseModelFromJson(
  Map<String, dynamic> json,
) => _PostUsersRedemptionsResponseModel(
  postRedemptionId: (json['postRedemptionId'] as num).toInt(),
  postId: (json['postId'] as num).toInt(),
  redemptionAt: DateTime.parse(json['redemptionAt'] as String),
  imageUrl: json['imageUrl'] as String?,
  postName: json['postName'] as String,
  restaurantName: json['restaurantName'] as String?,
  userName: json['userName'] as String?,
);

Map<String, dynamic> _$PostUsersRedemptionsResponseModelToJson(
  _PostUsersRedemptionsResponseModel instance,
) => <String, dynamic>{
  'postRedemptionId': instance.postRedemptionId,
  'postId': instance.postId,
  'redemptionAt': instance.redemptionAt.toIso8601String(),
  'imageUrl': instance.imageUrl,
  'postName': instance.postName,
  'restaurantName': instance.restaurantName,
  'userName': instance.userName,
};
