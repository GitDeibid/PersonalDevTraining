import 'package:flutter/material.dart';
import 'package:flutter_web_app_1/locator.dart';
import 'package:flutter_web_app_1/router/route_generator.dart';
import 'package:flutter_web_app_1/services/navigation_service.dart';
import 'package:flutter_web_app_1/ui/layout/main_layout_page.dart';
//import 'package:flutter_web_app_1/ui/pages/counter_page.dart';
//import 'package:flutter_web_app_1/ui/pages/counter_provider_page.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CounterApp',
      initialRoute: 'stateful',
      /* routes: {
        'stateful':( _ ) => CounterPage(),
        'provider':( _ ) => CounterProviderPage()
      }, */
      onGenerateRoute: RouteGenerator.generateRoute,
      //navigatorKey: navigationService.navKey, //Utilizar este key para navegar por las diferentes vistas. Ir a custom App menu bar.
      navigatorKey: locator<NavigationService>().navKey,//Instancia de la clase.
      builder:( _, child) {
        return MainLayoutPage(child:  child!);
      },
    );
  }
}