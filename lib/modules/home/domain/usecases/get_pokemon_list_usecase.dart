import '../entity/pokemon_entity.dart';
import '../repositories/pokedex_home_repository.dart';

abstract class IGetPokemonList {
  Future<List<PokemonEntity>> call();
}

class GetPokemonList implements IGetPokemonList {
  final IPokedexHomeRepository _repository;

  GetPokemonList(this._repository);

  @override
  Future<List<PokemonEntity>> call() async =>
      await _repository.getPokemonList();
}
