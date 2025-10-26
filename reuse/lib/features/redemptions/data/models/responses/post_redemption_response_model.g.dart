// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_redemption_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PostRedemptionResponseModel _$PostRedemptionResponseModelFromJson(
  Map<String, dynamic> json,
) => _PostRedemptionResponseModel(
  id: (json['id'] as num).toInt(),
  userId: json['userId'] as String,
  postId: (json['postId'] as num).toInt(),
  createdAt: DateTime.parse(json['createdAt'] as String),
  status: $enumDecode(_$PostRedemptionEnumEnumMap, json['status']),
);

Map<String, dynamic> _$PostRedemptionResponseModelToJson(
  _PostRedemptionResponseModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'userId': instance.userId,
  'postId': instance.postId,
  'createdAt': instance.createdAt.toIso8601String(),
  'status': _$PostRedemptionEnumEnumMap[instance.status]!,
};

const _$PostRedemptionEnumEnumMap = {
  PostRedemptionEnum.RESERVED: 'RESERVED',
  PostRedemptionEnum.CANCELLED: 'CANCELLED',
  PostRedemptionEnum.COMPLETED: 'COMPLETED',
};
