import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'artist_search_view_model.dart';
import 'widgets/artist_list_tile.dart';

class ArtistSearchScreen extends ConsumerWidget {
  const ArtistSearchScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchState = ref.watch(artistSearchViewModelProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Cerca d\'Artistes Jamendo')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              decoration: const InputDecoration(
                labelText: 'Nom de l\'artista...',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
              onSubmitted: (value) {
                ref.read(artistSearchViewModelProvider.notifier).search(value);
              },
            ),
          ),
          Expanded(
            child: searchState.when(
              data: (artists) {
                if (artists.isEmpty) {
                  return const Center(
                    child: Text('Introdueix un nom per començar la cerca.'),
                  );
                }
                return ListView.builder(
                  itemCount: artists.length,
                  itemBuilder: (context, index) {
                    return ArtistListTile(artist: artists[index]);
                  },
                );
              },
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (error, stackTrace) => Center(
                child: Text(
                  'Error: ${error.toString()}',
                  style: const TextStyle(color: Colors.red),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
