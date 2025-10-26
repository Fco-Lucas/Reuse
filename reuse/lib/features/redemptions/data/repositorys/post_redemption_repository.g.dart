// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_redemption_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(postRedemptionRepository)
const postRedemptionRepositoryProvider = PostRedemptionRepositoryProvider._();

final class PostRedemptionRepositoryProvider
    extends
        $FunctionalProvider<
          PostRedemptionRepository,
          PostRedemptionRepository,
          PostRedemptionRepository
        >
    with $Provider<PostRedemptionRepository> {
  const PostRedemptionRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'postRedemptionRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$postRedemptionRepositoryHash();

  @$internal
  @override
  $ProviderElement<PostRedemptionRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  PostRedemptionRepository create(Ref ref) {
    return postRedemptionRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PostRedemptionRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PostRedemptionRepository>(value),
    );
  }
}

String _$postRedemptionRepositoryHash() =>
    r'83d1ae12673216d401266c77f3d8220272f2839a';
