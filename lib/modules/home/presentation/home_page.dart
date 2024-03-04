import 'package:flutter/material.dart';

import '../../../commons/extensions/build_context_extension.dart';
import '../../../commons/helpers/presentation/mvvm/mvvm.dart';
import 'home_state.dart';
import 'home_viewmodel.dart';
import 'widgets/app_bar_home_widget.dart';
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
      backgroundColor: Colors.white,
      appBar: const HomeAppBarWidget(),
      body: Stack(
        children: <Widget>[
          Center(
            child: Opacity(
              opacity: 0.1,
              child: Image.asset(
                'assets/images/pokeball_dark.png',
                height: context.screenHeight * 0.7,
                width: context.screenWidth * 0.7,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ViewModelBuilder<HomeViewModel, HomeState>(
                viewModel: viewModel,
                builder: (context, state) {
                  if (state.isLoading) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (state.hasError) {
                    return Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const Text(
                            'Falha ao localizar Pokémons\npara nossa Pokédex',
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'Google',
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: context.screenHeight * 0.08),
                          ElevatedButton(
                            onPressed: () => viewModel.featchPokemonList(),
                            child: const Text(
                              'Tentar novamente',
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Google',
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }
                  return Expanded(
                    // child: PokemonListWidget(
                    //   pokemonList: state.pokemonList,
                    // ),
                    child: PokemonGridWidget(
                      pokemonList: state.pokemonList,
                    ),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
