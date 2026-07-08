import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../core/network/jamendo_api_client.dart';
import '../domain/album.dart';
import '../domain/track.dart';

part 'artist_detail_repository.g.dart';

class ArtistDetailRepository {
  final JamendoApiClient _apiClient;

  ArtistDetailRepository(this._apiClient);

  Future<List<Album>> getArtistAlbums(String artistId) async {
    // Nota: Pots adaptar el mètode si el teu JamendoApiClient té mètodes genèrics de GET,
    // o fer servir la teva instància interna de Dio si cal.
    final response = await _apiClient.searchArtistAlbums(artistId);
    return response.map((json) => Album.fromJson(json)).toList();
  }

  Future<List<Track>> getArtistTracks(String artistId) async {
    final response = await _apiClient.searchArtistTracks(artistId);
    return response.map((json) => Track.fromJson(json)).toList();
  }
}

@riverpod
ArtistDetailRepository artistDetailRepository(Ref ref) {
  final apiClient = ref.watch(jamendoApiClientProvider);
  return ArtistDetailRepository(apiClient);
}
