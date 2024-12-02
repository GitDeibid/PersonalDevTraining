/*
 * Depende de otro widget
 * 
 */
import 'package:flutter/material.dart';
import 'package:flutter_web_app_1/ui/shared/custom_app_menu.dart';

class MainLayoutPage extends StatelessWidget {
  final Widget child;

  const MainLayoutPage({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(
        children: [
          CustomAppMenu(),
          Spacer(),
          Expanded(child:  child),
          Spacer(),
        ],
      ),),
    );
  }
}