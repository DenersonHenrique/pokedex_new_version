import 'package:faker/faker.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pokedex_new_version/modules/home/domain/entity/pokemon_entity.dart';
import 'package:pokedex_new_version/modules/home/domain/usecases/get_pokemon_list_usecase.dart';
import 'package:pokedex_new_version/modules/home/domain/repositories/pokedex_home_repository.dart';

class PokedexHomeRepositoryMock extends Mock
    implements IPokedexHomeRepository {}

void main() {
  late PokedexHomeRepositoryMock repository;
  late GetPokemonList usecase;
  final List<PokemonEntity> pokemonList = <PokemonEntity>[
    PokemonEntity(
      id: faker.hashCode,
      num: faker.randomGenerator.integer(150).toString(),
      name: faker.guid.guid(),
      img: faker.guid.guid(),
      type: faker.lorem.words(4),
      height: faker.guid.guid(),
      weight: faker.guid.guid(),
      candy: faker.guid.guid(),
      candyCount: faker.randomGenerator.integer(25),
      egg: faker.guid.guid(),
      spawnChance: faker.randomGenerator.decimal(),
      avgSpawns: faker.randomGenerator.decimal(),
      spawnTime: faker.guid.guid(),
      multipliers: faker.randomGenerator.amount(
        (_) => faker.randomGenerator.decimal(),
        10,
      ),
      weaknesses: faker.lorem.words(4),
    )
  ];

  setUp(() {
    repository = PokedexHomeRepositoryMock();
    usecase = GetPokemonList(repository);
  });

  group('Find Pokemon list.', () {
    test('Should be return a Pokemon List.', () async {
      when(repository.getPokemonList()).thenAnswer(
        (_) => Future.value(pokemonList),
      );

      final result = await usecase.call();

      expect(result, pokemonList);
      verify(() => repository.getPokemonList()).called(1);
    });
  });
}