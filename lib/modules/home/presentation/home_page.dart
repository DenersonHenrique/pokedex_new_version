import 'package:flutter/material.dart';

import '../../../commons/helpers/presentation/mvvm/mvvm.dart';
import 'home_state.dart';
import 'home_viewmodel.dart';
import 'widgets/pokemon_grid_widget.dart';
// import 'widgets/pokemon_list_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ViewState<HomePage, HomeViewModel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokemon List'),
      ),
      body: ViewModelBuilder<HomeViewModel, HomeState>(
        viewModel: viewModel,
        builder: (context, state) {
          if (state.isLoading) {
            const Center(
              child: CircularProgressIndicator(),
            );
          }
          return PokemonGridWidget(
            pokemonList: state.pokemonList,
          );
        },
      ),
    );
  }
}
