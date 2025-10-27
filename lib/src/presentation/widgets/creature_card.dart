import 'package:catch_anything/src/domain/creature.dart';
import 'package:flutter/material.dart';

class CreatureCard extends StatelessWidget {
  final Creature creature;

  const CreatureCard({super.key, required this.creature});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.network(creature.imageUrl, height: 100, width: 100),
            const SizedBox(height: 8),
            Text(
              creature.name,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 8),
            LinearProgressIndicator(
              value: creature.currentHp / creature.stats['hp']!,
              backgroundColor: Colors.grey[300],
              valueColor: const AlwaysStoppedAnimation<Color>(Colors.green),
            ),
            const SizedBox(height: 4),
            Text(
              'HP: ${creature.currentHp.toStringAsFixed(0)}/${creature.stats['hp']!.toStringAsFixed(0)}',
            ),
          ],
        ),
      ),
    );
  }
}
