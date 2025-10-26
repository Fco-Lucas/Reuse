import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reuse/features/users/data/enums/user_status_enum.dart';

part 'user_response_model.freezed.dart';
part 'user_response_model.g.dart';

@freezed
abstract class UserResponseModel with _$UserResponseModel {
  const factory UserResponseModel({
    required String id,
    required DateTime createdAt,
    required String name,
    required String cpf,
    required UserStatusEnum status,
  }) = _UserResponseModel;

  factory UserResponseModel.fromJson(Map<String, dynamic> json) =>
      _$UserResponseModelFromJson(json);
}