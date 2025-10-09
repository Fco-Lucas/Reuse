// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(restaurantRepository)
const restaurantRepositoryProvider = RestaurantRepositoryProvider._();

final class RestaurantRepositoryProvider
    extends
        $FunctionalProvider<
          RestaurantRepository,
          RestaurantRepository,
          RestaurantRepository
        >
    with $Provider<RestaurantRepository> {
  const RestaurantRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'restaurantRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$restaurantRepositoryHash();

  @$internal
  @override
  $ProviderElement<RestaurantRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  RestaurantRepository create(Ref ref) {
    return restaurantRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RestaurantRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<RestaurantRepository>(value),
    );
  }
}

String _$restaurantRepositoryHash() =>
    r'79fe8f43bf7c654a9a6de74c54c7ff42cb7aee8d';
