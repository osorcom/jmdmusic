class Artist {
  final String id;
  final String name;
  final String image;
  final List<String> tags;

  Artist({
    required this.id,
    required this.name,
    required this.image,
    required this.tags,
  });

  factory Artist.fromJson(Map<String, dynamic> json) {
    final musicInfo = json['musicinfo'] ?? {};
    final tagsList =
        (musicInfo['tags'] as List?)?.map((t) => t.toString()).toList() ?? [];

    return Artist(
      id: json['id'] ?? '',
      name: json['name'] ?? 'Unknown Artist',
      image: json['image'] ?? '',
      tags: tagsList,
    );
  }
}
