import 'package:flutter/material.dart';
import 'package:jmdmusic/src/features/artist_detail/domain/album.dart';

class ArtistAlbumsGrid extends StatelessWidget {
  final List<Album> albums;

  const ArtistAlbumsGrid({super.key, required this.albums});

  @override
  Widget build(BuildContext context) {
    if (albums.isEmpty) {
      return const Center(child: Text("No hi ha àlbums"));
    }

    return GridView.builder(
      padding: const EdgeInsets.all(12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        childAspectRatio: 0.8,
      ),
      itemCount: albums.length,
      itemBuilder: (context, index) {
        final album = albums[index];
        return Card(
          clipBehavior: Clip.antiAlias,
          child: Column(
            children: [
              Expanded(
                child: album.image.isNotEmpty
                    ? Image.network(
                        album.image,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      )
                    : const Icon(Icons.album, size: 50),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  album.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
