import 'package:flutter_modular/flutter_modular.dart';

class HomeModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ModuleRoute(
          Modular.initialRoute,
          transition: TransitionType.fadeIn,
          module: HomeModule(),
        ),
      ];
}
