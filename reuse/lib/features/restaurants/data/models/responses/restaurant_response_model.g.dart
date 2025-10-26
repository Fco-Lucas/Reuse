// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RestaurantResponseModel _$RestaurantResponseModelFromJson(
  Map<String, dynamic> json,
) => _RestaurantResponseModel(
  id: json['id'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  name: json['name'] as String,
  cnpj: json['cnpj'] as String,
  status: RestaurantStatusEnum.fromJson(json['status'] as String),
);

Map<String, dynamic> _$RestaurantResponseModelToJson(
  _RestaurantResponseModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'createdAt': instance.createdAt.toIso8601String(),
  'name': instance.name,
  'cnpj': instance.cnpj,
  'status': instance.status,
};
