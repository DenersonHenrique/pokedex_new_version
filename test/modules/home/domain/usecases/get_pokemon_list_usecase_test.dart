import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pokedex_new_version/modules/home/domain/entity/pokemon_entity.dart';
import 'package:pokedex_new_version/modules/home/domain/repositories/pokedex_home_repository.dart';
import 'package:pokedex_new_version/modules/home/domain/usecases/get_pokemon_list_usecase.dart';

import '../../../../mocks/pokemon_entity_mock.dart';

class MockPokedexHomeRepository extends Mock
    implements IPokedexHomeRepository {}

void main() {
  late MockPokedexHomeRepository repository;
  late GetPokemonListUsecase usecase;

  final List<PokemonEntity> mockPokemonList = List.generate(
    10,
    (_) => MockPokemonEntity.random(),
  );

  setUp(() {
    repository = MockPokedexHomeRepository();
    usecase = GetPokemonListUsecase(repository);
  });

  group('GetPokemonListUsecase', () {
    test('should return a list of PokemonEntity from repository', () async {
      // Arrange
      when(() => repository.getPokemonList()).thenAnswer(
        (_) async => mockPokemonList,
      );

      // Act
      final result = await usecase.call();

      // Assert
      expect(result, equals(mockPokemonList));
      verify(() => repository.getPokemonList()).called(1);
    });

    test('should throw an exception if repository call fails', () async {
      // Arrange
      when(() => repository.getPokemonList()).thenThrow(Exception());

      // Act & Assert
      expect(() => usecase.call(), throwsException);
      verify(() => repository.getPokemonList()).called(1);
    });
  });
}
