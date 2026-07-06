// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artist_search_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ArtistSearchViewModel)
final artistSearchViewModelProvider = ArtistSearchViewModelProvider._();

final class ArtistSearchViewModelProvider
    extends $AsyncNotifierProvider<ArtistSearchViewModel, List<Artist>> {
  ArtistSearchViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'artistSearchViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$artistSearchViewModelHash();

  @$internal
  @override
  ArtistSearchViewModel create() => ArtistSearchViewModel();
}

String _$artistSearchViewModelHash() =>
    r'320c07579f074992f9e252e5aab52347bc34a92c';

abstract class _$ArtistSearchViewModel extends $AsyncNotifier<List<Artist>> {
  FutureOr<List<Artist>> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AsyncValue<List<Artist>>, List<Artist>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<Artist>>, List<Artist>>,
              AsyncValue<List<Artist>>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
