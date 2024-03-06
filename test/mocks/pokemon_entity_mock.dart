import 'package:faker/faker.dart';
import 'package:pokedex_new_version/modules/home/domain/entity/evolution_entity.dart';
import 'package:pokedex_new_version/modules/home/domain/entity/pokemon_entity.dart';

class MockPokemonEntity extends PokemonEntity {
  const MockPokemonEntity({
    int super.id = 0,
    String super.number = '',
    String super.name = '',
    String super.img = '',
    List<String> super.type = const <String>[],
    String super.height = '',
    String super.weight = '',
    String super.candy = '',
    int super.candyCount = 0,
    String super.egg = '',
    double super.spawnChance = 0.0,
    double super.avgSpawns = 0.0,
    String super.spawnTime = '',
    List<double> super.multipliers = const <double>[],
    List<String> super.weaknesses = const <String>[],
    final List<EvolutionEntity>? prevEvolution = const <EvolutionEntity>[],
    final List<EvolutionEntity>? nextEvolution = const <EvolutionEntity>[],
  });

  factory MockPokemonEntity.random() {
    final faker = Faker();
    return MockPokemonEntity(
      id: faker.randomGenerator.integer(999),
      number: faker.randomGenerator.integer(999).toString(),
      name: faker.person.firstName(),
      img: faker.image.image(),
      type: List.generate(3, (_) => faker.randomGenerator.string(15)),
      height: faker.randomGenerator.decimal().toString(),
      weight: faker.randomGenerator.decimal().toString(),
      candy: faker.lorem.word(),
      candyCount: faker.randomGenerator.integer(100),
      egg: faker.lorem.word(),
      spawnChance: faker.randomGenerator.decimal(),
      avgSpawns: faker.randomGenerator.decimal(),
      spawnTime: faker.date.time(),
      multipliers: List.generate(3, (_) => faker.randomGenerator.decimal()),
      weaknesses: List.generate(3, (_) => faker.randomGenerator.string(15)),
      nextEvolution: List.generate(
        2,
        (_) => EvolutionEntity(
          number: faker.randomGenerator.integer(999).toString(),
          name: faker.person.firstName(),
        ),
      ),
      prevEvolution: List.generate(
        2,
        (_) => EvolutionEntity(
          number: faker.randomGenerator.integer(999).toString(),
          name: faker.person.firstName(),
        ),
      ),
    );
  }
}
