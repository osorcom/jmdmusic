import 'package:dio/dio.dart';

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
}
