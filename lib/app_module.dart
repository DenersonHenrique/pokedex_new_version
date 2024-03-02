import 'package:flutter_modular/flutter_modular.dart';

import 'modules/home/home_module.dart';
import 'commons/adapters/http_client.dart';
import 'commons/adapters/http_client_impl.dart';
import 'modules/home/presentation/home_page.dart';

class AppModule extends Module {
  @override
  void binds(i) {
    i.addSingleton<IHttpClient>(() => HttpClient());
  }

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
