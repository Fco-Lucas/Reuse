// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'redemptions_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(RedemptionsController)
const redemptionsControllerProvider = RedemptionsControllerFamily._();

final class RedemptionsControllerProvider
    extends $NotifierProvider<RedemptionsController, RedemptionsState> {
  const RedemptionsControllerProvider._({
    required RedemptionsControllerFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'redemptionsControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$redemptionsControllerHash();

  @override
  String toString() {
    return r'redemptionsControllerProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  RedemptionsController create() => RedemptionsController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RedemptionsState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<RedemptionsState>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is RedemptionsControllerProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$redemptionsControllerHash() =>
    r'0bd97c0a6f47fbab48ce332a211a5ee82f3ab5a6';

final class RedemptionsControllerFamily extends $Family
    with
        $ClassFamilyOverride<
          RedemptionsController,
          RedemptionsState,
          RedemptionsState,
          RedemptionsState,
          String
        > {
  const RedemptionsControllerFamily._()
    : super(
        retry: null,
        name: r'redemptionsControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  RedemptionsControllerProvider call(String userId) =>
      RedemptionsControllerProvider._(argument: userId, from: this);

  @override
  String toString() => r'redemptionsControllerProvider';
}

abstract class _$RedemptionsController extends $Notifier<RedemptionsState> {
  late final _$args = ref.$arg as String;
  String get userId => _$args;

  RedemptionsState build(String userId);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref = this.ref as $Ref<RedemptionsState, RedemptionsState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<RedemptionsState, RedemptionsState>,
              RedemptionsState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
