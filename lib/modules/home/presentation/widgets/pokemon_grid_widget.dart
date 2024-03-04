import 'package:flutter/material.dart';

import '../../domain/entity/pokemon_entity.dart';
import 'pokemon_item_widget.dart';

class PokemonGridWidget extends StatelessWidget {
  final List<PokemonEntity> pokemonList;

  const PokemonGridWidget({
    super.key,
    required this.pokemonList,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Number of columns in the grid
        crossAxisSpacing: 6.0, // Spacing between columns
        mainAxisSpacing: 6.0, // Spacing between rows
      ),
      itemCount: pokemonList.length,
      itemBuilder: (context, index) {
        final pokemon = pokemonList[index];
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: PokemonItemWidget(
            pokemon: pokemon,
          ),
        );
      },
    );
  }
}
