import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex_new_version/modules/home/home_module.dart';

import 'modules/home/presentation/home_page.dart';

class AppModule extends Module {
  @override
  List<Module> get imports => [
        HomeModule(),
      ];

  @override
  void routes(RouteManager r) {
    r.child(
      '/',
      child: (context) => const HomePage(),
    );
    r.module(
      '/home',
      module: HomeModule(),
    );
  }
}
