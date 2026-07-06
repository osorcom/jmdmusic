import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../data/jamendo_api_client.dart';
import '../data/artist_repository.dart';

part 'providers.g.dart';

@riverpod
JamendoApiClient jamendoApiClient(Ref ref) {
  return JamendoApiClient();
}

@riverpod
ArtistRepository artistRepository(Ref ref) {
  final apiClient = ref.watch(jamendoApiClientProvider);
  return ArtistRepository(apiClient);
}
