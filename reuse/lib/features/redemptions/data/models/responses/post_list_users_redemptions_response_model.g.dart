// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_list_users_redemptions_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PostListUsersRedemptionsResponseModel
_$PostListUsersRedemptionsResponseModelFromJson(Map<String, dynamic> json) =>
    _PostListUsersRedemptionsResponseModel(
      content: (json['content'] as List<dynamic>)
          .map(
            (e) => PostUsersRedemptionsResponseModel.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
      first: json['first'] as bool,
      end: json['end'] as bool,
      page: (json['page'] as num).toInt(),
      size: (json['size'] as num).toInt(),
      pageElements: (json['pageElements'] as num).toInt(),
      totalPages: (json['totalPages'] as num).toInt(),
      totalElements: (json['totalElements'] as num).toInt(),
    );

Map<String, dynamic> _$PostListUsersRedemptionsResponseModelToJson(
  _PostListUsersRedemptionsResponseModel instance,
) => <String, dynamic>{
  'content': instance.content,
  'first': instance.first,
  'end': instance.end,
  'page': instance.page,
  'size': instance.size,
  'pageElements': instance.pageElements,
  'totalPages': instance.totalPages,
  'totalElements': instance.totalElements,
};
