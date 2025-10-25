import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_post_request_model.freezed.dart';
part 'create_post_request_model.g.dart';

@freezed
abstract class CreatePostRequestModel with _$CreatePostRequestModel {
  const factory CreatePostRequestModel({
    required String name,
    required int amount, 
    required DateTime validUntil,
    required String address,
    required String? description,
  }) = _CreatePostRequestModel;

  factory CreatePostRequestModel.fromJson(Map<String, dynamic> json) =>
    _$CreatePostRequestModelFromJson(json);
}
