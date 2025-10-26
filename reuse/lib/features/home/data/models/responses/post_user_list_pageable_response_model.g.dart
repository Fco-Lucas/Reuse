// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_user_list_pageable_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PostUserListPageableResponseModel _$PostUserListPageableResponseModelFromJson(
  Map<String, dynamic> json,
) => _PostUserListPageableResponseModel(
  content: (json['content'] as List<dynamic>)
      .map((e) => PostUserListResponseModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  first: json['first'] as bool,
  end: json['end'] as bool,
  page: (json['page'] as num).toInt(),
  size: (json['size'] as num).toInt(),
  pageElements: (json['pageElements'] as num).toInt(),
  totalPages: (json['totalPages'] as num).toInt(),
  totalElements: (json['totalElements'] as num).toInt(),
);

Map<String, dynamic> _$PostUserListPageableResponseModelToJson(
  _PostUserListPageableResponseModel instance,
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
