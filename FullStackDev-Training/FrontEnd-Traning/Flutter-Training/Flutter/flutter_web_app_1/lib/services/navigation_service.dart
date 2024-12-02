import 'package:flutter/material.dart';

class NavigationService{ //Clase privada
  final GlobalKey<NavigatorState> navKey = GlobalKey<NavigatorState>();

  Future navigateTo(String routeName){
    return navKey.currentState!.pushNamed(routeName);
  }

  void goBack(String routeName){
    return navKey.currentState!.pop();
  }
}

//final navigationService = new _NavigationService(); //exportar.