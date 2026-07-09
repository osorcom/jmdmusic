import 'package:flutter/material.dart';
import 'package:jmdmusic/src/features/artist_detail/domain/track.dart';
// Ajusta la teva ruta del domain si cal

class ArtistTracksList extends StatelessWidget {
  final List<Track> tracks;

  const ArtistTracksList({super.key, required this.tracks});

  @override
  Widget build(BuildContext context) {
    if (tracks.isEmpty) {
      return const Center(child: Text("No hi ha cançons"));
    }

    return ListView.separated(
      padding: const EdgeInsets.all(8),
      itemCount: tracks.length,
      separatorBuilder: (_, _) => const Divider(height: 1),
      itemBuilder: (context, index) {
        final track = tracks[index];
        return ListTile(
          leading: Text(
            "${index + 1}",
            style: const TextStyle(color: Colors.grey),
          ),
          title: Text(track.name),
          trailing: const Icon(Icons.play_circle_outline),
          onTap: () {
            // Aquí enllaçarem el reproductor més endavant
          },
        );
      },
    );
  }
}
