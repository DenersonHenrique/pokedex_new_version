import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex_new_version/modules/home/home_module.dart';

class AppModule extends Module {
  @override
  List<Module> get imports => [
        HomeModule(),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          Modular.initialRoute,
          child: (_, __) => const HomePage(),
          transition: TransitionType.fadeIn,
        ),
      ];
}
