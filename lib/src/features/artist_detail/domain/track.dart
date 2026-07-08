class Track {
  final String id;
  final String name;
  final String audio;

  const Track({required this.id, required this.name, required this.audio});

  factory Track.fromJson(Map<String, dynamic> json) {
    return Track(
      id: json['id'] ?? '',
      name: json['name'] ?? 'Cançó desconeguda',
      audio: json['audio'] ?? '',
    );
  }
}
