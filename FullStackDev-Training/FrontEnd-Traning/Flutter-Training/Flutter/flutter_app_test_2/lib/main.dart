import 'package:flutter/material.dart';
import 'package:flutter_app_test_2/config/theme/app_theme.dart';
import 'package:flutter_app_test_2/presentation/screens/chat_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yes No App',
      theme: AppTheme( selectedColor: 2).theme(),
      home: const ChatScreen(),
    );
  }
}