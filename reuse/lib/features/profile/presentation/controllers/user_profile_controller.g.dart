// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(UserProfileController)
const userProfileControllerProvider = UserProfileControllerFamily._();

final class UserProfileControllerProvider
    extends $NotifierProvider<UserProfileController, UserProfileState> {
  const UserProfileControllerProvider._({
    required UserProfileControllerFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'userProfileControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$userProfileControllerHash();

  @override
  String toString() {
    return r'userProfileControllerProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  UserProfileController create() => UserProfileController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(UserProfileState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<UserProfileState>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is UserProfileControllerProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$userProfileControllerHash() =>
    r'825af73f7713c36b0cb71682ac880c6d6140fb0d';

final class UserProfileControllerFamily extends $Family
    with
        $ClassFamilyOverride<
          UserProfileController,
          UserProfileState,
          UserProfileState,
          UserProfileState,
          String
        > {
  const UserProfileControllerFamily._()
    : super(
        retry: null,
        name: r'userProfileControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  UserProfileControllerProvider call(String userId) =>
      UserProfileControllerProvider._(argument: userId, from: this);

  @override
  String toString() => r'userProfileControllerProvider';
}

abstract class _$UserProfileController extends $Notifier<UserProfileState> {
  late final _$args = ref.$arg as String;
  String get userId => _$args;

  UserProfileState build(String userId);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref = this.ref as $Ref<UserProfileState, UserProfileState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<UserProfileState, UserProfileState>,
              UserProfileState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
