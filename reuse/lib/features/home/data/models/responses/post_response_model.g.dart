// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PostResponseModel _$PostResponseModelFromJson(Map<String, dynamic> json) =>
    _PostResponseModel(
      id: (json['id'] as num).toInt(),
      liked: json['liked'] as bool,
      userId: json['userId'] as String?,
      userName: json['userName'] as String?,
      restaurantId: json['restaurantId'] as String?,
      restaurantName: json['restaurantName'] as String?,
      name: json['name'] as String,
      amount: (json['amount'] as num).toInt(),
      amountRedemption: (json['amountRedemption'] as num).toInt(),
      validUntil: DateTime.parse(json['validUntil'] as String),
      createdAt: DateTime.parse(json['createdAt'] as String),
      address: json['address'] as String,
      description: json['description'] as String,
      imageUrl: json['imageUrl'] as String?,
      status: $enumDecode(_$PostStatusEnumEnumMap, json['status']),
    );

Map<String, dynamic> _$PostResponseModelToJson(_PostResponseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'liked': instance.liked,
      'userId': instance.userId,
      'userName': instance.userName,
      'restaurantId': instance.restaurantId,
      'restaurantName': instance.restaurantName,
      'name': instance.name,
      'amount': instance.amount,
      'amountRedemption': instance.amountRedemption,
      'validUntil': instance.validUntil.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
      'address': instance.address,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
      'status': _$PostStatusEnumEnumMap[instance.status]!,
    };

const _$PostStatusEnumEnumMap = {
  PostStatusEnum.ACTIVE: 'ACTIVE',
  PostStatusEnum.INACTIVE: 'INACTIVE',
  PostStatusEnum.FULL: 'FULL',
  PostStatusEnum.EXPIRED: 'EXPIRED',
};
