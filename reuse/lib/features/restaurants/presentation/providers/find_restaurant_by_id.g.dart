// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'find_restaurant_by_id.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(findRestaurantById)
const findRestaurantByIdProvider = FindRestaurantByIdFamily._();

final class FindRestaurantByIdProvider
    extends
        $FunctionalProvider<
          AsyncValue<RestaurantResponseModel?>,
          RestaurantResponseModel?,
          FutureOr<RestaurantResponseModel?>
        >
    with
        $FutureModifier<RestaurantResponseModel?>,
        $FutureProvider<RestaurantResponseModel?> {
  const FindRestaurantByIdProvider._({
    required FindRestaurantByIdFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'findRestaurantByIdProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$findRestaurantByIdHash();

  @override
  String toString() {
    return r'findRestaurantByIdProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<RestaurantResponseModel?> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<RestaurantResponseModel?> create(Ref ref) {
    final argument = this.argument as String;
    return findRestaurantById(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is FindRestaurantByIdProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$findRestaurantByIdHash() =>
    r'ab9babff9171a294e5310eaf543475e5d419201a';

final class FindRestaurantByIdFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<RestaurantResponseModel?>, String> {
  const FindRestaurantByIdFamily._()
    : super(
        retry: null,
        name: r'findRestaurantByIdProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  FindRestaurantByIdProvider call(String restaurantId) =>
      FindRestaurantByIdProvider._(argument: restaurantId, from: this);

  @override
  String toString() => r'findRestaurantByIdProvider';
}
