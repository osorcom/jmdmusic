import '../domain/artist.dart';
import '../../../core/network/jamendo_api_client.dart';

class ArtistRepository {
  final JamendoApiClient _apiClient;

  ArtistRepository(this._apiClient);

  Future<List<Artist>> searchArtists(String query) async {
    final rawResults = await _apiClient.searchArtists(query);
    return rawResults.map((json) => Artist.fromJson(json)).toList();
  }
}
