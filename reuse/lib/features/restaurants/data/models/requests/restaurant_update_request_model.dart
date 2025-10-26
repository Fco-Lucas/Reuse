import 'package:freezed_annotation/freezed_annotation.dart';

part 'restaurant_update_request_model.freezed.dart';
part 'restaurant_update_request_model.g.dart';

@freezed
abstract class RestaurantUpdateRequestModel with _$RestaurantUpdateRequestModel {
  const factory RestaurantUpdateRequestModel({
    required String name,
    required String cnpj,
  }) = _RestaurantUpdateRequestModel;

  factory RestaurantUpdateRequestModel.fromJson(Map<String, dynamic> json) =>
    _$RestaurantUpdateRequestModelFromJson(json);
}