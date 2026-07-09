import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../data/artist_detail_repository.dart';
import '../domain/album.dart';
import '../domain/track.dart';

part 'artist_detail_view_model.g.dart';

@riverpod
class ArtistDetailViewModel extends _$ArtistDetailViewModel {
  @override
  Future<(List<Album>, List<Track>)> build(String artistId) async {
    final repository = ref.read(artistDetailRepositoryProvider);

    // Executem les dues peticions HTTP en paral·lel
    final futures = await Future.wait([
      repository.getArtistAlbums(artistId),
      repository.getArtistTracks(artistId),
    ]);

    return (futures[0] as List<Album>, futures[1] as List<Track>);
  }
}
