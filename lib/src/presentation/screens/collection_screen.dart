import 'package:catch_anything/src/domain/creature.dart';
import 'package:catch_anything/src/presentation/screens/battle_screen.dart';
import 'package:flutter/material.dart';

class CollectionScreen extends StatelessWidget {
  const CollectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final creatures = [
      Creature(
        id: '1',
        name: 'Creature 1',
        description: 'Description 1',
        imageUrl: 'https://picsum.photos/200',
        stats: {'hp': 100, 'attack': 100, 'defense': 100, 'speed': 100},
      ),
      Creature(
        id: '2',
        name: 'Creature 2',
        description: 'Description 2',
        imageUrl: 'https://picsum.photos/200',
        stats: {'hp': 100, 'attack': 100, 'defense': 100, 'speed': 100},
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Creature Collection'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.8,
        ),
        itemCount: creatures.length,
        itemBuilder: (context, index) {
          final creature = creatures[index];
          return Card(
            child: Column(
              children: [
                Image.network(creature.imageUrl),
                Text(creature.name),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const BattleScreen()),
          );
        },
        child: const Icon(Icons.sports_kabaddi),
      ),
    );
  }
}
