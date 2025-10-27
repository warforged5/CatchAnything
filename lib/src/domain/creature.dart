class Creature {
  final String id;
  final String name;
  final String description;
  final String imageUrl;
  final Map<String, double> stats;

  Creature({
    required this.id,
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.stats,
  });
}
