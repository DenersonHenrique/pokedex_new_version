import 'package:pokedex_new_version/commons/helpers/erros.dart';

import '../../../../commons/adapters/http_client.dart';
import '../models/pokemon_model.dart';

abstract class IPokedexHomeDatasource {
  Future<List<PokemonModel>> get();
}

class PokedexHomeDataSource extends IPokedexHomeDatasource {
  final IHttpClient _client;

  PokedexHomeDataSource(this._client);

  @override
  Future<List<PokemonModel>> get() async {
    try {
      final response = await _client.get('path');

      return ((response.data ?? []) as List)
          .map((element) => PokemonModel.fromMap(element))
          .toList();
    } on Exception catch (error) {
      throw DatasourceException(exception: error);
    }
  }
}
