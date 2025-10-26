import 'package:reuse/features/restaurants/data/models/responses/restaurant_response_model.dart';
import 'package:reuse/features/restaurants/data/repositorys/restaurant_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'find_restaurant_by_id.g.dart'; // Make sure the filename matches

@riverpod
Future<RestaurantResponseModel?> findRestaurantById(
  Ref ref, 
  String restaurantId,
) async {
  try {
    final restaurantRepository = ref.read(restaurantRepositoryProvider);
    return await restaurantRepository.getRestaurantById(restaurantId: restaurantId); 
  } catch (e) {
    return null;
  }
}