// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_like_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(postLikeRepository)
const postLikeRepositoryProvider = PostLikeRepositoryProvider._();

final class PostLikeRepositoryProvider
    extends
        $FunctionalProvider<
          PostLikeRepository,
          PostLikeRepository,
          PostLikeRepository
        >
    with $Provider<PostLikeRepository> {
  const PostLikeRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'postLikeRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$postLikeRepositoryHash();

  @$internal
  @override
  $ProviderElement<PostLikeRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  PostLikeRepository create(Ref ref) {
    return postLikeRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PostLikeRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PostLikeRepository>(value),
    );
  }
}

String _$postLikeRepositoryHash() =>
    r'a7d782e0719eec7c2dabfaf174607a98b80c66c2';
