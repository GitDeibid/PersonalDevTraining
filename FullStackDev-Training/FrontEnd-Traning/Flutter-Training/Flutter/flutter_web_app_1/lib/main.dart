import 'package:flutter/material.dart';
import 'package:flutter_web_app_1/ui/pages/counter_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CounterApp',
      initialRoute: 'stateful',
      routes: {
        'stateful':(_) => CounterPage()
      },
    );
  }
}