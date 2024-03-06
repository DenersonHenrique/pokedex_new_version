import 'dart:convert';

import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pokedex_new_version/commons/adapters/http_client.dart';
import 'package:pokedex_new_version/commons/adapters/http_response.dart';
import 'package:pokedex_new_version/commons/helpers/erros.dart';
import 'package:pokedex_new_version/modules/home/data/datasources/pokedex_home_datasource.dart';
import 'package:pokedex_new_version/modules/home/data/models/pokemon_model.dart';

class MockHttpClient extends Mock implements IHttpClient {}

void main() {
  group('PokedexHomeDataSource', () {
    late PokedexHomeDataSource dataSource;
    late MockHttpClient mockHttpClient;

    final expectedResponse = List.generate(
      10,
      (_) => {
        'id': faker.randomGenerator.integer(999),
        'num': faker.randomGenerator.integer(999).toString(),
        'name': faker.person.firstName(),
        'img': faker.image.image(),
        'type': List.generate(3, (_) => faker.randomGenerator.string(15)),
        'height': faker.randomGenerator.decimal().toString(),
        'weight': faker.randomGenerator.decimal().toString(),
        'candy': faker.lorem.word(),
        'candyCount': faker.randomGenerator.integer(100),
        'egg': faker.lorem.word(),
        'spawnChance': faker.randomGenerator.decimal(),
        'avgSpawns': faker.randomGenerator.decimal(),
        'spawnTime': faker.date.time(),
        'multipliers': List.generate(3, (_) => faker.randomGenerator.decimal()),
        'weaknesses': List.generate(3, (_) => faker.randomGenerator.string(15)),
        'nextEvolution': List.generate(
          2,
          (_) => {
            'num': faker.randomGenerator.integer(999).toString(),
            'name': faker.person.firstName(),
          },
        ),
        'prevEvolution': List.generate(
          2,
          (_) => {
            'num': faker.randomGenerator.integer(999).toString(),
            'name': faker.person.firstName(),
          },
        ),
      },
    );

    setUp(() {
      mockHttpClient = MockHttpClient();
      dataSource = PokedexHomeDataSource(mockHttpClient);
    });

    group('get', () {
      test('returns a list of PokemonModel on success', () async {
        // Arrange
        when(() => mockHttpClient.get(any())).thenAnswer(
          (_) async => HttpResponse(
            data: json.encode({'pokemon': expectedResponse}),
            statusCode: 200,
          ),
        );

        // Act
        final result = await dataSource.get();

        // Assert
        expect(result, isA<List<PokemonModel>>());
        expect(result.length, expectedResponse.length);
        // Add more assertions based on the response structure if needed
      });

      test('throws a DatasourceException on failure', () async {
        // Arrange
        when(() => mockHttpClient.get(any())).thenAnswer(
          (_) async => HttpResponse(
            data: 'Server Error',
            statusCode: 500,
          ),
        );

        // Act
        final call = dataSource.get;

        // Assert
        expect(call, throwsA(isA<DatasourceException>()));
      });
    });
  });
}
