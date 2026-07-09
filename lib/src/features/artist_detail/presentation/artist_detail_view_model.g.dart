// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artist_detail_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ArtistDetailViewModel)
final artistDetailViewModelProvider = ArtistDetailViewModelFamily._();

final class ArtistDetailViewModelProvider
    extends
        $AsyncNotifierProvider<
          ArtistDetailViewModel,
          (List<Album>, List<Track>)
        > {
  ArtistDetailViewModelProvider._({
    required ArtistDetailViewModelFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'artistDetailViewModelProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$artistDetailViewModelHash();

  @override
  String toString() {
    return r'artistDetailViewModelProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  ArtistDetailViewModel create() => ArtistDetailViewModel();

  @override
  bool operator ==(Object other) {
    return other is ArtistDetailViewModelProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$artistDetailViewModelHash() =>
    r'b7fcd466a38cb661db39f2ffa9ebc305f9d1199e';

final class ArtistDetailViewModelFamily extends $Family
    with
        $ClassFamilyOverride<
          ArtistDetailViewModel,
          AsyncValue<(List<Album>, List<Track>)>,
          (List<Album>, List<Track>),
          FutureOr<(List<Album>, List<Track>)>,
          String
        > {
  ArtistDetailViewModelFamily._()
    : super(
        retry: null,
        name: r'artistDetailViewModelProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ArtistDetailViewModelProvider call(String artistId) =>
      ArtistDetailViewModelProvider._(argument: artistId, from: this);

  @override
  String toString() => r'artistDetailViewModelProvider';
}

abstract class _$ArtistDetailViewModel
    extends $AsyncNotifier<(List<Album>, List<Track>)> {
  late final _$args = ref.$arg as String;
  String get artistId => _$args;

  FutureOr<(List<Album>, List<Track>)> build(String artistId);
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref =
        this.ref
            as $Ref<
              AsyncValue<(List<Album>, List<Track>)>,
              (List<Album>, List<Track>)
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<(List<Album>, List<Track>)>,
                (List<Album>, List<Track>)
              >,
              AsyncValue<(List<Album>, List<Track>)>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, () => build(_$args));
  }
}
