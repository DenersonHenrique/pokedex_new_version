import '../entity/pokemon_entity.dart';
import '../repositories/pokedex_home_repository.dart';

abstract class IGetPokemonListUsecase {
  Future<List<PokemonEntity>> call();
}

class GetPokemonListUsecase implements IGetPokemonListUsecase {
  final IPokedexHomeRepository _repository;

  GetPokemonListUsecase(this._repository);

  @override
  Future<List<PokemonEntity>> call() async =>
      await _repository.getPokemonList();
}
