import 'package:flutter/cupertino.dart';
//Verificar si estoy en la web.
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter_web_app_1/ui/views/counter_provider_view.dart';
import 'package:flutter_web_app_1/ui/views/counter_view.dart';
import 'package:flutter_web_app_1/ui/views/view_404.dart';

class RouteGenerator{
  //Métodos y propiedades de manera estática.

  static Route<dynamic> generateRoute (RouteSettings settings){

    switch(settings.name){
      case 'stateful':
        return _fadeRoute(const CounterView(),'/stateful');
        /* MaterialPageRoute(
          settings: RouteSettings(name: '/stateful'),
          builder: (_) => const CounterPage()); */
      case 'provider':
        return _fadeRoute(const CounterProviderView(), '/provider');
        /* MaterialPageRoute(
          settings: RouteSettings(name: '/provider'),
          builder: (_) => const CounterProviderPage()); */
      default:
        return _fadeRoute(View404(), '/404');
        /* MaterialPageRoute(
          settings: RouteSettings(name: '/404'),
          builder: (_) => const Page404()); */
    }
  }

  static PageRoute _fadeRoute(Widget child, String routeName){
    return PageRouteBuilder(
      settings: RouteSettings(name: routeName),
      pageBuilder: (_, __, ___) => child,
      transitionDuration: const Duration(milliseconds: 200),
      transitionsBuilder: (_, animation, __, ___) => (kIsWeb) ? FadeTransition(opacity: animation, child: child,) : CupertinoPageTransition(primaryRouteAnimation: animation, secondaryRouteAnimation: __, linearTransition: true, child: child)
    );
  }
}