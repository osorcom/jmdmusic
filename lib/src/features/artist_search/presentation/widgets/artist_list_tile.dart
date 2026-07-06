import 'package:flutter/material.dart';
import '../../domain/artist.dart';

class ArtistListTile extends StatelessWidget {
  final Artist artist;

  const ArtistListTile({super.key, required this.artist});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      clipBehavior:
          Clip.antiAlias, // Evita que el clic surti de les cantonades del Card
      child: ListTile(
        leading: CircleAvatar(
          radius: 28, // Mida estàndard del ListTile
          backgroundImage: artist.image.isNotEmpty
              ? NetworkImage(artist.image)
              : null,
          child: artist.image.isEmpty ? const Icon(Icons.person) : null,
        ),

        title: Text(
          artist.name,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),

        subtitle: Padding(
          padding: const EdgeInsets.only(
            top: 6.0,
          ), // Una mica de separació amb el títol
          child: artist.tags.isEmpty
              ? const Text(
                  'Sense tags d\'estil',
                  style: TextStyle(color: Colors.grey),
                )
              : Wrap(
                  spacing: 6,
                  runSpacing: 4,
                  children: artist.tags.take(4).map((tag) {
                    return Chip(
                      label: Text(tag, style: const TextStyle(fontSize: 11)),
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      padding: EdgeInsets.zero,
                    );
                  }).toList(),
                ),
        ),

        trailing: const Icon(
          Icons.arrow_forward_ios,
          size: 14,
          color: Colors.grey,
        ),

        onTap: () {
          // Implementa la navegació a la pantalla de detalls de l'artista;
        },
      ),
    );
  }
}
