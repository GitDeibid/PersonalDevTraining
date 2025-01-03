//Handlers:

import 'package:fluro/fluro.dart';
import 'package:flutter_web_app_1/ui/views/counter_provider_view.dart';
import 'package:flutter_web_app_1/ui/views/counter_view.dart';
import 'package:flutter_web_app_1/ui/views/view_404.dart';

final counterHandler = Handler(handlerFunc: (context, params) {
  //print(params);

//Parametros de la url.
  return CounterView(
      base: params['base']?[0] ?? '5'); //Puede regresar una pagina o una vista.
});

//Provider view.
final providerHandler = Handler(handlerFunc: (context, params) {
  //print(params);
  return CounterProviderView(base: params['q']?[0] ?? '10');
});

//dashboard Handler

final dashboardHandler = Handler(handlerFunc: (context, params) {
  print(params);
  return View404();
});

//404/
final pageNotFound = Handler(handlerFunc: (_, __) => View404());
