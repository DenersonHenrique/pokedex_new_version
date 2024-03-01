import 'package:pokedex_new_version/modules/home/data/models/pokemon_model.dart';

abstract class IPokedexHomeDatasource {
  Future<List<PokemonModel>> get();
}
