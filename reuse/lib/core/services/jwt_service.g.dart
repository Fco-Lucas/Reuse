// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jwt_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(jwtService)
const jwtServiceProvider = JwtServiceProvider._();

final class JwtServiceProvider
    extends $FunctionalProvider<JwtService, JwtService, JwtService>
    with $Provider<JwtService> {
  const JwtServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'jwtServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$jwtServiceHash();

  @$internal
  @override
  $ProviderElement<JwtService> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  JwtService create(Ref ref) {
    return jwtService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(JwtService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<JwtService>(value),
    );
  }
}

String _$jwtServiceHash() => r'5de78edd4fee387232079a34a08ea23ce149bec4';
