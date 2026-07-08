import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'jamendo_api_client.g.dart';

class JamendoApiClient {
  final Dio _dio = Dio(BaseOptions(baseUrl: 'https://api.jamendo.com/v3.0'));
  static const String _clientId = String.fromEnvironment(
    'JAMENDO_CLIENT_ID',
    defaultValue:
        '5cc34317', // clau de proves proporcionada per Jamendo, només funciona per operacions de lectura.
  );

  Future<List<dynamic>> searchArtists(String name) async {
    if (name.isEmpty) return [];

    final response = await _dio.get(
      '/artists/musicinfo',
      queryParameters: {
        'client_id': _clientId,
        'format': 'jsonpretty',
        'namesearch': name,
        'include': 'musicinfo',
        'limit': 50,
      },
    );

    if (response.statusCode == 200) {
      return response.data['results'] ?? [];
    } else {
      throw Exception('Error en connectar amb Jamendo API');
    }
  }

  Future<List<dynamic>> searchArtistAlbums(String artistId) async {
    if (artistId.isEmpty) return [];

    final response = await _dio.get(
      '/albums',
      queryParameters: {
        'client_id': _clientId,
        'format': 'jsonpretty',
        'artist_id': artistId,
        'order': 'releasedate_desc', // Mostra primer els àlbums més recents
      },
    );

    if (response.statusCode == 200) {
      return response.data['results'] ?? [];
    } else {
      throw Exception('Error en carregar els àlbums de l\'artista de Jamendo');
    }
  }

  Future<List<dynamic>> searchArtistTracks(String artistId) async {
    if (artistId.isEmpty) return [];

    final response = await _dio.get(
      '/tracks',
      queryParameters: {
        'client_id': _clientId,
        'format': 'jsonpretty',
        'artist_id': artistId,
        'order': 'popularity_desc', // Mostra primer les cançons més populars
        'limit': 15, // Limitem a un top 15 de cançons soltes
      },
    );

    if (response.statusCode == 200) {
      return response.data['results'] ?? [];
    } else {
      throw Exception('Error en carregar les cançons de l\'artista de Jamendo');
    }
  }
}

@riverpod
JamendoApiClient jamendoApiClient(Ref ref) {
  return JamendoApiClient();
}
