import 'package:freezed_annotation/freezed_annotation.dart';

part 'restaurant_create_request_model.freezed.dart';
part 'restaurant_create_request_model.g.dart';

@freezed
abstract class RestaurantCreateRequestModel with _$RestaurantCreateRequestModel {
  const factory RestaurantCreateRequestModel({
    required String name,
    required String cnpj,
    required String password,
  }) = _RestaurantCreateRequestModel;

  factory RestaurantCreateRequestModel.fromJson(Map<String, dynamic> json) =>
    _$RestaurantCreateRequestModelFromJson(json);
}