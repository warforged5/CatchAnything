import 'package:catch_anything/src/domain/creature.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

abstract class CreatureDatasource {
  Future<Creature> getCreature(String input);
}

class GeminiCreatureDatasource implements CreatureDatasource {
  final String apiKey;

  GeminiCreatureDatasource({required this.apiKey});

  @override
  Future<Creature> getCreature(String input) async {
    final model = GenerativeModel(model: 'gemini-pro', apiKey: apiKey);
    final prompt =
        'Create a creature based on the following input: $input. Provide a name, description, and stats (hp, attack, defense, speed).';
    final content = [Content.text(prompt)];
    await model.generateContent(content);

    // TODO: Parse the response and create a Creature object.
    // The response will be in a structured format (e.g., JSON) that needs to be parsed.
    // For now, we'll return a placeholder.

    return Creature(
      id: input,
      name: 'Placeholder Name',
      description: 'Placeholder Description',
      imageUrl: 'https://picsum.photos/200/300',
      stats: {'hp': 50, 'attack': 50, 'defense': 50, 'speed': 50},
    );
  }
}
