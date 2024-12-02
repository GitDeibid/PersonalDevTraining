//Enviar los argumentos para el boton
import 'package:flutter/material.dart';

class CustomFlatBtn extends StatelessWidget {

  final String txt;
  final Color color;
  final Function onPressed;

  const CustomFlatBtn({
    super.key, //Referencia?
    required this.txt, 
    required this.onPressed,
    this.color = Colors.red 
    });


  @override
  Widget build(BuildContext context) {
    return TextButton(
            style: TextButton.styleFrom(              
              backgroundColor: color
            ),
            onPressed: ()=>onPressed(), 
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Text(txt),
          ));
  }
}