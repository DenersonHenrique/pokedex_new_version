import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pokedex_new_version/modules/home/domain/entity/pokemon_entity.dart';
import 'package:pokedex_new_version/modules/home/presentation/widgets/pokemon_item_widget.dart';

import '../../../../mocks/pokemon_entity_mock.dart';

void main() {
  group('PokemonItemWidget', () {
    // Mock PokemonEntity object.
    late PokemonEntity mockPokemon = MockPokemonEntity.random();

    setUp(() {
      mockPokemon = MockPokemonEntity.random();
    });

    testWidgets('should display Pokemon details correctly.',
        (WidgetTester tester) async {
      // Build the widget under test.
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: PokemonItemWidget(pokemon: mockPokemon),
          ),
        ),
      );

      // Verify that Pokemon name is displayed.
      expect(find.text(mockPokemon.name!), findsOneWidget);

      // Verify that Pokemon type is displayed.
      expect(find.text(mockPokemon.type![0]), findsOneWidget);

      // Verify that Pokemon image is displayed.
      expect(
        find.byWidgetPredicate(
          (widget) => widget is Image && widget.image is NetworkImage,
        ),
        findsOneWidget,
      );
    });

    testWidgets('should display default text if image not found.', (
      WidgetTester tester,
    ) async {
      // Modify the mock Pokemon to have an invalid image URL.
      final PokemonEntity invalidImagePokemon = mockPokemon.copyWith(
        img: 'invalid_url',
      );

      // Build the widget under test.
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: PokemonItemWidget(pokemon: invalidImagePokemon),
          ),
        ),
      );

      // Wait for all asynchronous operations to complete.
      await tester.pumpAndSettle();

      // Verify that default text is displayed.
      expect(find.text('Imagem não encontrada!'), findsOneWidget);
    });
  });
}
