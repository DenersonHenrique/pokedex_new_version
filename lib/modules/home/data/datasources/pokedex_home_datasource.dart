import 'dart:convert';

import '../../../../commons/adapters/http_client.dart';
import '../../../../commons/constants/consts_api.dart';
import '../../../../commons/helpers/erros.dart';
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
      final response = await _client.get(ConstsApi.pokeApiUrl);
      final jsonDecode = json.decode(response.data);

      return ((jsonDecode['pokemon'] ?? <PokemonModel>[]) as List)
          .map((element) => PokemonModel.fromMap(element))
          .toList();
    } on Exception catch (error) {
      throw DatasourceException(exception: error);
    }
  }
}
