import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jmdmusic/src/features/artist_detail/presentation/artist_detail_view_model.dart';
import 'package:jmdmusic/src/features/artist_detail/presentation/widgets/artist_albums_grid.dart';
import 'package:jmdmusic/src/features/artist_detail/presentation/widgets/artist_track_list.dart';
import 'package:jmdmusic/src/features/artist_detail/presentation/widgets/sticky_tab_bar_delegate.dart';
import 'package:jmdmusic/src/features/artist_search/domain/artist.dart';

class ArtistDetailScreen extends ConsumerWidget {
  final Artist artist;

  const ArtistDetailScreen({super.key, required this.artist});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final detailState = ref.watch(artistDetailViewModelProvider(artist.id));

    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                expandedHeight: 250,
                pinned: true,
                leading: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.white.withAlpha(180),
                    child: IconButton(
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.black87,
                        size: 20,
                      ),
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                  ),
                ),
                flexibleSpace: FlexibleSpaceBar(
                  title: Text(
                    artist.name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      shadows: [Shadow(blurRadius: 10, color: Colors.black)],
                    ),
                  ),
                  background: artist.image.isNotEmpty
                      ? Image.network(artist.image, fit: BoxFit.cover)
                      : Container(color: Colors.blueGrey),
                ),
              ),
              if (artist.tags.isNotEmpty)
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                    child: Wrap(
                      spacing: 8,
                      children: artist.tags
                          .map((tag) => Chip(label: Text(tag)))
                          .toList(),
                    ),
                  ),
                ),
              SliverPersistentHeader(
                pinned: true,
                delegate: StickyTabBarDelegate(
                  child: Container(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    child: const TabBar(
                      labelColor: Colors.blue,
                      unselectedLabelColor: Colors.grey,
                      indicatorColor: Colors.blue,
                      tabs: [
                        Tab(text: "ÀLBUMS", icon: Icon(Icons.album_outlined)),
                        Tab(
                          text: "CANÇONS",
                          icon: Icon(Icons.music_note_outlined),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ];
          },
          body: detailState.when(
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (err, stack) => Center(child: Text('Error: $err')),
            data: (record) {
              final (albums, tracks) = record;
              return TabBarView(
                children: [
                  ArtistAlbumsGrid(albums: albums), // <── Molt més net!
                  ArtistTracksList(tracks: tracks), // <── Molt més net!
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
