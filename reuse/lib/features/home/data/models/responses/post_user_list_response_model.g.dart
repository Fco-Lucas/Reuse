// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_user_list_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PostUserListResponseModel _$PostUserListResponseModelFromJson(
  Map<String, dynamic> json,
) => _PostUserListResponseModel(
  id: (json['id'] as num).toInt(),
  userId: json['userId'] as String?,
  userName: json['userName'] as String?,
  restaurantId: json['restaurantId'] as String?,
  restaurantName: json['restaurantName'] as String?,
  name: json['name'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  address: json['address'] as String,
  description: json['description'] as String,
  imageUrl: json['imageUrl'] as String?,
);

Map<String, dynamic> _$PostUserListResponseModelToJson(
  _PostUserListResponseModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'userId': instance.userId,
  'userName': instance.userName,
  'restaurantId': instance.restaurantId,
  'restaurantName': instance.restaurantName,
  'name': instance.name,
  'createdAt': instance.createdAt.toIso8601String(),
  'address': instance.address,
  'description': instance.description,
  'imageUrl': instance.imageUrl,
};
