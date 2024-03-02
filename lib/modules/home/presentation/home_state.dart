import '../domain/entity/pokemon_entity.dart';
import '../../../commons/helpers/presentation/mvvm/mvvm.dart';

class HomeState extends ViewModelState {
  factory HomeState.initial() => const HomeState();
  final bool isError;
  final bool isLoading;
  final List<PokemonEntity> pokemonList;

  const HomeState({
    this.isError = false,
    this.isLoading = false,
    this.pokemonList = const [],
  });

  HomeState copyWith({
    bool? isError,
    bool? isLoading,
    List<PokemonEntity>? pokemonList,
  }) {
    return HomeState(
      isError: isError ?? this.isError,
      isLoading: isLoading ?? this.isLoading,
      pokemonList: pokemonList ?? this.pokemonList,
    );
  }
}
