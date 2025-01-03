import 'package:fluro/fluro.dart';
import 'package:flutter_web_app_1/router/route_handlers.dart';
import 'package:flutter_web_app_1/ui/views/counter_provider_view.dart';
import 'package:flutter_web_app_1/ui/views/counter_view.dart';
import 'package:flutter_web_app_1/ui/views/view_404.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();
  static void configureRoutes() {
    //Config de la instancia

    router.define('/',
        handler: counterHandler, transitionType: TransitionType.fadeIn);
    router.define('/stateful',
        handler: counterHandler, transitionType: TransitionType.fadeIn);
//Recibir parámetros url como variables.
    router.define('/stateful/:base',
        handler: counterHandler, transitionType: TransitionType.fadeIn);
    router.define('/provider',
        handler: providerHandler, transitionType: TransitionType.fadeIn);
    router.define('/dashboard/users/:userid/:roleid',
        handler: dashboardHandler, transitionType: TransitionType.fadeIn);
    router.notFoundHandler = pageNotFound;
  }
}
