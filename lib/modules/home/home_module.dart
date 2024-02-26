import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex_new_version/modules/home/presentation/home_page.dart';

class HomeModule extends Module {
  @override
  void routes(RouteManager r) {
    r.child(
      '/',
      child: (context) => const HomePage(),
    );
  }
}
