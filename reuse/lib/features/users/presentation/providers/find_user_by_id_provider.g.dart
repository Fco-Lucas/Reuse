// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'find_user_by_id_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(findUserById)
const findUserByIdProvider = FindUserByIdFamily._();

final class FindUserByIdProvider
    extends
        $FunctionalProvider<
          AsyncValue<UserResponseModel?>,
          UserResponseModel?,
          FutureOr<UserResponseModel?>
        >
    with
        $FutureModifier<UserResponseModel?>,
        $FutureProvider<UserResponseModel?> {
  const FindUserByIdProvider._({
    required FindUserByIdFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'findUserByIdProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$findUserByIdHash();

  @override
  String toString() {
    return r'findUserByIdProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<UserResponseModel?> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<UserResponseModel?> create(Ref ref) {
    final argument = this.argument as String;
    return findUserById(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is FindUserByIdProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$findUserByIdHash() => r'f18d06ec142bc88aecc4dea87efa5d99c32e0bd5';

final class FindUserByIdFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<UserResponseModel?>, String> {
  const FindUserByIdFamily._()
    : super(
        retry: null,
        name: r'findUserByIdProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  FindUserByIdProvider call(String userId) =>
      FindUserByIdProvider._(argument: userId, from: this);

  @override
  String toString() => r'findUserByIdProvider';
}
