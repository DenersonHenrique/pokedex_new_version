import 'package:pokedex_new_version/modules/home/domain/entity/pokemon_entity.dart';

import '../../domain/repositories/pokedex_home_repository.dart';
import '../datasources/pokedex_home_datasource.dart';

class PokedexHomeRepository implements IPokedexHomeRepository {
  final IPokedexHomeDatasource _pokedexHomeDataSource;

  PokedexHomeRepository(this._pokedexHomeDataSource);

  @override
  Future<List<PokemonEntity>> getPokemonList() async {
    final response = await _pokedexHomeDataSource.get();
    return response;
  }
}
