// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_profile_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(RestaurantProfileController)
const restaurantProfileControllerProvider =
    RestaurantProfileControllerFamily._();

final class RestaurantProfileControllerProvider
    extends
        $NotifierProvider<RestaurantProfileController, RestaurantProfileState> {
  const RestaurantProfileControllerProvider._({
    required RestaurantProfileControllerFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'restaurantProfileControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$restaurantProfileControllerHash();

  @override
  String toString() {
    return r'restaurantProfileControllerProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  RestaurantProfileController create() => RestaurantProfileController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RestaurantProfileState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<RestaurantProfileState>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is RestaurantProfileControllerProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$restaurantProfileControllerHash() =>
    r'6b7c91d897da235fb81cd8587a1025428dbb18b4';

final class RestaurantProfileControllerFamily extends $Family
    with
        $ClassFamilyOverride<
          RestaurantProfileController,
          RestaurantProfileState,
          RestaurantProfileState,
          RestaurantProfileState,
          String
        > {
  const RestaurantProfileControllerFamily._()
    : super(
        retry: null,
        name: r'restaurantProfileControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  RestaurantProfileControllerProvider call(String userId) =>
      RestaurantProfileControllerProvider._(argument: userId, from: this);

  @override
  String toString() => r'restaurantProfileControllerProvider';
}

abstract class _$RestaurantProfileController
    extends $Notifier<RestaurantProfileState> {
  late final _$args = ref.$arg as String;
  String get userId => _$args;

  RestaurantProfileState build(String userId);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref =
        this.ref as $Ref<RestaurantProfileState, RestaurantProfileState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<RestaurantProfileState, RestaurantProfileState>,
              RestaurantProfileState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
