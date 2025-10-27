import 'package:catch_anything/src/domain/creature.dart';

abstract class CreatureRepository {
  Future<Creature> getCreature(String input);
}
