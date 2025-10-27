import 'package:catch_anything/src/data/datasources/creature_datasource.dart';
import 'package:catch_anything/src/data/repositories/creature_repository_impl.dart';
import 'package:catch_anything/src/domain/creature.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'creature_repository_test.mocks.dart';

@GenerateMocks([CreatureDatasource])
void main() {
  late CreatureRepositoryImpl repository;
  late MockCreatureDatasource mockDatasource;

  setUp(() {
    mockDatasource = MockCreatureDatasource();
    repository = CreatureRepositoryImpl(creatureDatasource: mockDatasource);
  });

  test('getCreature returns a creature from the datasource', () async {
    final creature = Creature(
      id: 'test',
      name: 'Test Creature',
      description: 'A creature for testing',
      imageUrl: 'https://picsum.photos/200',
      stats: {'hp': 100, 'attack': 100, 'defense': 100, 'speed': 100},
    );

    when(mockDatasource.getCreature('test')).thenAnswer((_) async => creature);

    final result = await repository.getCreature('test');

    expect(result, equals(creature));
  });
}
