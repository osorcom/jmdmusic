// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artist_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(artistRepository)
final artistRepositoryProvider = ArtistRepositoryProvider._();

final class ArtistRepositoryProvider
    extends
        $FunctionalProvider<
          ArtistRepository,
          ArtistRepository,
          ArtistRepository
        >
    with $Provider<ArtistRepository> {
  ArtistRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'artistRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$artistRepositoryHash();

  @$internal
  @override
  $ProviderElement<ArtistRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  ArtistRepository create(Ref ref) {
    return artistRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ArtistRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ArtistRepository>(value),
    );
  }
}

String _$artistRepositoryHash() => r'9778340c3eb8399fd38952887776996b23563a20';
