import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:jmdmusic/src/features/artist_search/domain/artist.dart';
import 'package:jmdmusic/src/features/artist_search/shared/providers.dart';

part 'artist_search_view_model.g.dart';

@riverpod
class ArtistSearchViewModel extends _$ArtistSearchViewModel {
  @override
  FutureOr<List<Artist>> build() {
    // Estat inicial: llista buida sense haver cercat res
    return [];
  }

  Future<void> search(String query) async {
    if (query.trim().isEmpty) {
      state = const AsyncValue.data([]);
      return;
    }

    state = const AsyncValue.loading();

    state = await AsyncValue.guard(() async {
      final repository = ref.read(artistRepositoryProvider);
      return await repository.searchArtists(query);
    });
  }
}
