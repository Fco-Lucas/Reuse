import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_update_request_model.freezed.dart';
part 'user_update_request_model.g.dart';

@freezed
abstract class UserUpdateRequestModel with _$UserUpdateRequestModel {
  const factory UserUpdateRequestModel({
    required String name,
    required String cpf,
  }) = _UserUpdateRequestModel;

  factory UserUpdateRequestModel.fromJson(Map<String, dynamic> json) =>
    _$UserUpdateRequestModelFromJson(json);
}