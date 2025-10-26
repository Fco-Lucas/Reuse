// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_post_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreatePostRequestModel _$CreatePostRequestModelFromJson(
  Map<String, dynamic> json,
) => _CreatePostRequestModel(
  name: json['name'] as String,
  amount: (json['amount'] as num).toInt(),
  validUntil: DateTime.parse(json['validUntil'] as String),
  address: json['address'] as String,
  description: json['description'] as String?,
);

Map<String, dynamic> _$CreatePostRequestModelToJson(
  _CreatePostRequestModel instance,
) => <String, dynamic>{
  'name': instance.name,
  'amount': instance.amount,
  'validUntil': instance.validUntil.toIso8601String(),
  'address': instance.address,
  'description': instance.description,
};
