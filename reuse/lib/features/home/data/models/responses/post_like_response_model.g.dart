// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_like_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PostLikeResponseModel _$PostLikeResponseModelFromJson(
  Map<String, dynamic> json,
) => _PostLikeResponseModel(
  id: (json['id'] as num).toInt(),
  userId: json['userId'] as String,
  postId: (json['postId'] as num).toInt(),
  createdAt: DateTime.parse(json['createdAt'] as String),
  status: $enumDecode(_$PostLikeStatusEnumEnumMap, json['status']),
);

Map<String, dynamic> _$PostLikeResponseModelToJson(
  _PostLikeResponseModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'userId': instance.userId,
  'postId': instance.postId,
  'createdAt': instance.createdAt.toIso8601String(),
  'status': _$PostLikeStatusEnumEnumMap[instance.status]!,
};

const _$PostLikeStatusEnumEnumMap = {
  PostLikeStatusEnum.ACTIVE: 'ACTIVE',
  PostLikeStatusEnum.INACTIVE: 'INACTIVE',
};
