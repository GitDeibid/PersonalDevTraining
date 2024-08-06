import 'package:flutter/material.dart';
import 'package:flutter_app_test_1/presentation/screens/counter/counter_function_screen.dart';
import 'package:flutter_app_test_1/presentation/screens/counter/counter_screen.dart';
//import 'package:flutter/widgets.dart';

void main(){
  //Inicio mediante un widget inicial.
  //Recive cualquier cosa que sea un widget.

  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});//Constructor con key -> identificador del widget en el catalogo.

  @override
  Widget build(BuildContext context) {
    return MaterialApp( //Se utiliza const ya que mi app no cambia desde su construcción.
      debugShowCheckedModeBanner: false,
      //Tema:
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.cyan
      ),
      //Este es nuestro primer widget.
      home: const CounterFunctionsScreen()///Widget que se utilizará para mostrar textos en pantalla.
      //Se crea una pantalla independiente que es importada del archivo counter_screen.dart.-
    );
  }
  //Todos los stateless widget requieren un build.

}