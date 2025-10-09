// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_create_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserCreateRequestModel _$UserCreateRequestModelFromJson(
  Map<String, dynamic> json,
) => _UserCreateRequestModel(
  name: json['name'] as String,
  cpf: json['cpf'] as String,
  password: json['password'] as String,
);

Map<String, dynamic> _$UserCreateRequestModelToJson(
  _UserCreateRequestModel instance,
) => <String, dynamic>{
  'name': instance.name,
  'cpf': instance.cpf,
  'password': instance.password,
};
