// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'redemption_post_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(RedemptionPostController)
const redemptionPostControllerProvider = RedemptionPostControllerProvider._();

final class RedemptionPostControllerProvider
    extends $NotifierProvider<RedemptionPostController, RedemptionPostState> {
  const RedemptionPostControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'redemptionPostControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$redemptionPostControllerHash();

  @$internal
  @override
  RedemptionPostController create() => RedemptionPostController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RedemptionPostState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<RedemptionPostState>(value),
    );
  }
}

String _$redemptionPostControllerHash() =>
    r'7867be00f150fa9e05965d104e0deebcf6e01fbf';

abstract class _$RedemptionPostController
    extends $Notifier<RedemptionPostState> {
  RedemptionPostState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<RedemptionPostState, RedemptionPostState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<RedemptionPostState, RedemptionPostState>,
              RedemptionPostState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
