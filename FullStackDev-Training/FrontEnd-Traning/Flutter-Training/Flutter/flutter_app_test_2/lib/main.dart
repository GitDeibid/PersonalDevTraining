import 'package:flutter/material.dart';
import 'package:flutter_app_test_2/config/theme/app_theme.dart';
import 'package:flutter_app_test_2/presentation/providers/chat_provider.dart';
import 'package:flutter_app_test_2/presentation/screens/chat_screen.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers:[
        ChangeNotifierProvider(create: (_)=>ChatProvider()) //EL provider se ha creado a nivel global de la aplicación. || Cada widget hijo tiene acceso a este provider.
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Yes No App',
        theme: AppTheme( selectedColor: 3).theme(),
        home: const ChatScreen(),
      ),
    );
  }
}