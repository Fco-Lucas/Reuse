import 'package:dio/dio.dart';
import 'package:reuse/core/providers/dio_provider.dart';
import 'package:reuse/features/restaurants/data/models/requests/restaurant_create_request_model.dart';
import 'package:reuse/features/restaurants/data/models/responses/restaurant_response_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'restaurant_repository.g.dart';

@riverpod
RestaurantRepository restaurantRepository(Ref ref) {
  final dio = ref.watch(dioProvider);
  return RestaurantRepository(dio);
}

class RestaurantRepository {
  final Dio _dio;

  RestaurantRepository(this._dio);

  Future<RestaurantResponseModel> createRestaurant({required RestaurantCreateRequestModel data}) async {
    final response = await _dio.post("/restaurants", data: data.toJson());
    return RestaurantResponseModel.fromJson(response.data);
  }

  Future<RestaurantResponseModel> getRestaurantById({required String restaurantId}) async {
    final response = await _dio.post("/restaurants/$restaurantId");
    return RestaurantResponseModel.fromJson(response.data);
  }
}