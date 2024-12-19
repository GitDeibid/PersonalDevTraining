import 'package:fluro/fluro.dart';
import 'package:flutter_web_app_1/ui/views/counter_provider_view.dart';
import 'package:flutter_web_app_1/ui/views/counter_view.dart';
import 'package:flutter_web_app_1/ui/views/view_404.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();
  static void configureRoutes() {
    //Config de la instancia

    router.define('/',
        handler: _counterHandler, transitionType: TransitionType.fadeIn);
    router.define('/stateful',
        handler: _counterHandler, transitionType: TransitionType.fadeIn);
//Recibir parámetros url como variables.
    router.define('/stateful/:base',
        handler: _counterHandler, transitionType: TransitionType.fadeIn);

    router.define('/provider',
        handler: _providerHandler, transitionType: TransitionType.fadeIn);

    router.notFoundHandler = _pageNotFound;
  }

  //Handlers:

  static Handler _counterHandler = Handler(handlerFunc: (context, params) {
    //print(params);

    return CounterView(
        base:
            params['base']?[0] ?? '5'); //Puede regresar una pagina o una vista.
  });

  static Handler _providerHandler =
      Handler(handlerFunc: (context, params) => CounterProviderView());

  //404/
  static Handler _pageNotFound = Handler(handlerFunc: (_, __) => View404());
}
