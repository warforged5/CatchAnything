class Creature {
  final String id;
  final String name;
  final String description;
  final String imageUrl;
  final Map<String, double> stats;
  final double currentHp;

  Creature({
    required this.id,
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.stats,
    double? currentHp,
  }) : currentHp = currentHp ?? stats['hp']!;

  Creature copyWith({double? currentHp}) {
    return Creature(
      id: id,
      name: name,
      description: description,
      imageUrl: imageUrl,
      stats: stats,
      currentHp: currentHp ?? this.currentHp,
    );
  }
}
