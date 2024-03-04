import 'package:flutter/material.dart';

import '../../domain/entity/pokemon_entity.dart';

class PokemonListWidget extends StatelessWidget {
  final List<PokemonEntity> pokemonList;

  const PokemonListWidget({
    super.key,
    required this.pokemonList,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: pokemonList.length,
      itemBuilder: (context, index) {
        final pokemon = pokemonList[index];
        return ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
              pokemon.img ??
                  'https://w7.pngwing.com/pngs/1001/304/png-transparent-pokemon-go-poke-ball-pokemon-go-trademark-logo-desktop-wallpaper.png',
            ),
          ),
          title: Text(pokemon.name!),
          subtitle: Text(
            'Type: ${pokemon.type?.join(", ")}',
          ),
          onTap: () {
            // Handle onTap event if needed
          },
        );
      },
    );
  }
}
