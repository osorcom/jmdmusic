class Album {
  final String id;
  final String name;
  final String image;

  const Album({required this.id, required this.name, required this.image});

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      id: json['id'] ?? '',
      name: json['name'] ?? 'Àlbum desconegut',
      image: json['image'] ?? '',
    );
  }
}
