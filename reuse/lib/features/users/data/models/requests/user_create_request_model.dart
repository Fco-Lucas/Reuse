import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_create_request_model.freezed.dart';
part 'user_create_request_model.g.dart';

@freezed
abstract class UserCreateRequestModel with _$UserCreateRequestModel {
  const factory UserCreateRequestModel({
    required String name,
    required String cpf,
    required String password,
  }) = _UserCreateRequestModel;

  factory UserCreateRequestModel.fromJson(Map<String, dynamic> json) =>
    _$UserCreateRequestModelFromJson(json);
}