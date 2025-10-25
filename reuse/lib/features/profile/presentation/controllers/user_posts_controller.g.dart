// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_posts_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(UserPostsController)
const userPostsControllerProvider = UserPostsControllerFamily._();

final class UserPostsControllerProvider
    extends $NotifierProvider<UserPostsController, UserPostsState> {
  const UserPostsControllerProvider._({
    required UserPostsControllerFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'userPostsControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$userPostsControllerHash();

  @override
  String toString() {
    return r'userPostsControllerProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  UserPostsController create() => UserPostsController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(UserPostsState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<UserPostsState>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is UserPostsControllerProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$userPostsControllerHash() =>
    r'27a0b265ef9b7c08e1a7ab9a0c9539aaa5fe3ddb';

final class UserPostsControllerFamily extends $Family
    with
        $ClassFamilyOverride<
          UserPostsController,
          UserPostsState,
          UserPostsState,
          UserPostsState,
          String
        > {
  const UserPostsControllerFamily._()
    : super(
        retry: null,
        name: r'userPostsControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  UserPostsControllerProvider call(String userId) =>
      UserPostsControllerProvider._(argument: userId, from: this);

  @override
  String toString() => r'userPostsControllerProvider';
}

abstract class _$UserPostsController extends $Notifier<UserPostsState> {
  late final _$args = ref.$arg as String;
  String get userId => _$args;

  UserPostsState build(String userId);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref = this.ref as $Ref<UserPostsState, UserPostsState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<UserPostsState, UserPostsState>,
              UserPostsState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
