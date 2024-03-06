import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pokedex_new_version/modules/home/domain/entity/pokemon_entity.dart';
import 'package:pokedex_new_version/modules/home/presentation/widgets/pokemon_grid_widget.dart';
import 'package:pokedex_new_version/modules/home/presentation/widgets/pokemon_item_widget.dart';

import '../../../../mocks/pokemon_entity_mock.dart';

void main() {
  group('PokemonGridWidget', () {
    setUpAll(() {
      registerFallbackValue(const MockPokemonEntity());
    });

    // Create a list of mock PokemonEntity objects.
    final List<PokemonEntity> mockPokemonList = List.generate(
      4,
      (_) => MockPokemonEntity.random(),
    );

    testWidgets('should display correct number of PokemonItemWidgets', (
      WidgetTester tester,
    ) async {
      // Build the widget under test.
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: PokemonGridWidget(pokemonList: mockPokemonList),
          ),
        ),
      );

      await tester.pumpAndSettle();

      // Verify that the correct number of PokemonItemWidgets is displayed.
      expect(
        find.byType(PokemonItemWidget),
        findsNWidgets(mockPokemonList.length),
      );
    });

    testWidgets('should display PokemonItemWidgets with correct data', (
      WidgetTester tester,
    ) async {
      // Build the widget under test.
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: PokemonGridWidget(pokemonList: mockPokemonList),
          ),
        ),
      );

      // Wait for all asynchronous operations to complete.
      await tester.pumpAndSettle();

      // Verify that each PokemonItemWidget displays correct data.
      for (final pokemon in mockPokemonList) {
        expect(find.text(pokemon.name!), findsOneWidget);
        expect(find.text(pokemon.type![0]), findsOneWidget);
        expect(
          find.byType(PokemonItemWidget),
          findsNWidgets(mockPokemonList.length),
        );
      }
    });
  });
}
