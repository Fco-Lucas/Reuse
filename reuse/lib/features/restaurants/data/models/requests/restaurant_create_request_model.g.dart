// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_create_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RestaurantCreateRequestModel _$RestaurantCreateRequestModelFromJson(
  Map<String, dynamic> json,
) => _RestaurantCreateRequestModel(
  name: json['name'] as String,
  cnpj: json['cnpj'] as String,
  password: json['password'] as String,
);

Map<String, dynamic> _$RestaurantCreateRequestModelToJson(
  _RestaurantCreateRequestModel instance,
) => <String, dynamic>{
  'name': instance.name,
  'cnpj': instance.cnpj,
  'password': instance.password,
};
