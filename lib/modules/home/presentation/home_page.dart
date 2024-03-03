import 'package:flutter/material.dart';

import '../../../commons/extensions/build_context_extension.dart';
import '../../../commons/helpers/presentation/mvvm/mvvm.dart';
import 'home_state.dart';
import 'home_viewmodel.dart';
import 'widgets/app_bar_home_widget.dart';
import 'widgets/pokemon_grid_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ViewState<HomePage, HomeViewModel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            top: context.mediaQuery.padding.top - 240 / 2.7,
            left: context.screenWidth - (240 / 1.6),
            child: Opacity(
              opacity: 0.1,
              child: Image.asset(
                'assets/images/pokeball_dark.png',
                height: context.screenHeight * 0.3,
                width: context.screenWidth * 0.5,
              ),
            ),
          ),
          Column(
            children: <Widget>[
              SizedBox(height: context.mediaQuery.padding.top),
              const HomeAppBarWidget(),
              ViewModelBuilder<HomeViewModel, HomeState>(
                viewModel: viewModel,
                builder: (context, state) {
                  if (state.isLoading) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  return Expanded(
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
