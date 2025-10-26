// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_posts_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(RestaurantPostsController)
const restaurantPostsControllerProvider = RestaurantPostsControllerFamily._();

final class RestaurantPostsControllerProvider
    extends $NotifierProvider<RestaurantPostsController, RestaurantPostsState> {
  const RestaurantPostsControllerProvider._({
    required RestaurantPostsControllerFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'restaurantPostsControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$restaurantPostsControllerHash();

  @override
  String toString() {
    return r'restaurantPostsControllerProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  RestaurantPostsController create() => RestaurantPostsController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RestaurantPostsState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<RestaurantPostsState>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is RestaurantPostsControllerProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$restaurantPostsControllerHash() =>
    r'2c5a6261a64517891dd2e5f5dc92abc695de026e';

final class RestaurantPostsControllerFamily extends $Family
    with
        $ClassFamilyOverride<
          RestaurantPostsController,
          RestaurantPostsState,
          RestaurantPostsState,
          RestaurantPostsState,
          String
        > {
  const RestaurantPostsControllerFamily._()
    : super(
        retry: null,
        name: r'restaurantPostsControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  RestaurantPostsControllerProvider call(String userId) =>
      RestaurantPostsControllerProvider._(argument: userId, from: this);

  @override
  String toString() => r'restaurantPostsControllerProvider';
}

abstract class _$RestaurantPostsController
    extends $Notifier<RestaurantPostsState> {
  late final _$args = ref.$arg as String;
  String get userId => _$args;

  RestaurantPostsState build(String userId);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref = this.ref as $Ref<RestaurantPostsState, RestaurantPostsState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<RestaurantPostsState, RestaurantPostsState>,
              RestaurantPostsState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
