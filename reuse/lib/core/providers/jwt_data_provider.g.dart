// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jwt_data_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(jwtData)
const jwtDataProvider = JwtDataProvider._();

final class JwtDataProvider
    extends
        $FunctionalProvider<
          AsyncValue<JwtDataModel?>,
          JwtDataModel?,
          FutureOr<JwtDataModel?>
        >
    with $FutureModifier<JwtDataModel?>, $FutureProvider<JwtDataModel?> {
  const JwtDataProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'jwtDataProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$jwtDataHash();

  @$internal
  @override
  $FutureProviderElement<JwtDataModel?> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<JwtDataModel?> create(Ref ref) {
    return jwtData(ref);
  }
}

String _$jwtDataHash() => r'4d957e88394215bdb2c011612ef18675f8de0b34';
