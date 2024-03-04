import '../../../commons/helpers/presentation/mvvm/mvvm.dart';
import '../domain/entity/pokemon_entity.dart';

class HomeState extends ViewModelState {
  factory HomeState.initial() => const HomeState();
  final bool hasError;
  final bool isLoading;
  final List<PokemonEntity> pokemonList;

  const HomeState({
    this.hasError = false,
    this.isLoading = false,
    this.pokemonList = const [],
  });

  HomeState copyWith({
    bool? hasError,
    bool? isLoading,
    List<PokemonEntity>? pokemonList,
  }) {
    return HomeState(
      hasError: hasError ?? this.hasError,
      isLoading: isLoading ?? this.isLoading,
      pokemonList: pokemonList ?? this.pokemonList,
    );
  }
}
