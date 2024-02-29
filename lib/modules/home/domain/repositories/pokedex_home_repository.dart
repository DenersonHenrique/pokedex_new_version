import '../entity/pokemon_entity.dart';

abstract class IPokedexHomeRepository {
  Future<List<PokemonEntity>> getPokemonList();
}
