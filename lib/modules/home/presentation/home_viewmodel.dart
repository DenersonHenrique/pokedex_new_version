import '../../../commons/helpers/presentation/mvvm/mvvm.dart';
import '../domain/usecases/get_pokemon_list_usecase.dart';
import 'home_state.dart';

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
      await Future.delayed(const Duration(seconds: 10));

      final result = await _usecase();
      emit(state.copyWith(pokemonList: result));
    } catch (error) {
      state.copyWith(isError: true);
    }

    emit(state.copyWith(isLoading: false));
  }
}
