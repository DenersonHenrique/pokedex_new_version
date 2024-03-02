import 'package:flutter_modular/flutter_modular.dart';

import 'presentation/home_page.dart';
import 'presentation/home_viewmodel.dart';
import '../../commons/adapters/http_client.dart';
import 'data/datasources/pokedex_home_datasource.dart';
import 'domain/usecases/get_pokemon_list_usecase.dart';
import 'data/repositories/pokedex_home_repository.dart';
import 'domain/repositories/pokedex_home_repository.dart';

class HomeModule extends Module {
  @override
  void binds(i) {
    i.addLazySingleton<IPokedexHomeDatasource>(
      () => PokedexHomeDataSource(
        i.get<IHttpClient>(),
      ),
    );
    i.addLazySingleton<IPokedexHomeRepository>(PokedexHomeRepository.new);
    i.addSingleton<IGetPokemonListUsecase>(GetPokemonListUsecase.new);
    i.addSingleton<HomeViewModel>(HomeViewModel.new);
  }

  @override
  void routes(RouteManager r) {
    r.child(
      '/',
      child: (context) => const HomePage(),
    );
  }
}
