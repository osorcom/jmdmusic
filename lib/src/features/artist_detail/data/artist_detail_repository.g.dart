// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artist_detail_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(artistDetailRepository)
final artistDetailRepositoryProvider = ArtistDetailRepositoryProvider._();

final class ArtistDetailRepositoryProvider
    extends
        $FunctionalProvider<
          ArtistDetailRepository,
          ArtistDetailRepository,
          ArtistDetailRepository
        >
    with $Provider<ArtistDetailRepository> {
  ArtistDetailRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'artistDetailRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$artistDetailRepositoryHash();

  @$internal
  @override
  $ProviderElement<ArtistDetailRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ArtistDetailRepository create(Ref ref) {
    return artistDetailRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ArtistDetailRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ArtistDetailRepository>(value),
    );
  }
}

String _$artistDetailRepositoryHash() =>
    r'9824aa0abc280033baf128eabfab39c2207de4a6';
