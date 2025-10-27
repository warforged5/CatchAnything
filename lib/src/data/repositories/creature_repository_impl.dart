import 'package:catch_anything/src/data/datasources/creature_datasource.dart';
import 'package:catch_anything/src/domain/creature.dart';
import 'package:catch_anything/src/data/repositories/creature_repository.dart';

class CreatureRepositoryImpl implements CreatureRepository {
  final CreatureDatasource creatureDatasource;

  CreatureRepositoryImpl({required this.creatureDatasource});

  @override
  Future<Creature> getCreature(String input) {
    return creatureDatasource.getCreature(input);
  }
}
