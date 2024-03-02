import 'home_state.dart';
import '../domain/usecases/get_pokemon_list_usecase.dart';
import '../../../commons/helpers/presentation/mvvm/mvvm.dart';

class HomeViewModel extends ViewModel<HomeState> {
  final IGetPokemonListUsecase _usecase;

  HomeViewModel(this._usecase) : super(HomeState.initial());

  @override
  void initViewModel() {
    super.initViewModel();
    _featchPokemonList();
  }

  void _featchPokemonList() async {
    emit(state.copyWith(isLoading: true));

    try {
      final result = await _usecase();
      emit(state.copyWith(pokemonList: result));
    } catch (error) {
      state.copyWith(isError: true);
    }

    emit(state.copyWith(isLoading: false));
  }
}
