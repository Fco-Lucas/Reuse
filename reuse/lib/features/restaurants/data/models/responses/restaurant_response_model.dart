import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reuse/features/restaurants/data/enums/restaurant_status_enum.dart';

part 'restaurant_response_model.freezed.dart';
part 'restaurant_response_model.g.dart';

@freezed
abstract class RestaurantResponseModel with _$RestaurantResponseModel {
  const factory RestaurantResponseModel({
    required String id,
    required DateTime createdAt,
    required String name,
    required String cnpj,
    required RestaurantStatusEnum status,
  }) = _RestaurantResponseModel;

  factory RestaurantResponseModel.fromJson(Map<String, dynamic> json) =>
      _$RestaurantResponseModelFromJson(json);
}