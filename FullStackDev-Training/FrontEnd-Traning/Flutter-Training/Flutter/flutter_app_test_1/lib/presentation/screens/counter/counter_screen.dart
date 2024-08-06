import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {

  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  int clickCounter = 0;
  String textoPantalla='Clicks Realizados';

  @override
  Widget build(BuildContext context) {
    return Scaffold(//Permite utilizar Material como layout base.
        //child: hijos, algunos widget pueden recibir multiples hijos.
        //body: Center(child: Text('Counter Screen')),
        appBar: AppBar(
          title: const Text('Counter Screen'),centerTitle: true,
          
          ),
        body: Center(
          child: Column( //Constructor constante?? - No debería permitirlo.
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$clickCounter', 
              style: const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),),
              Text(textoPantalla, style: const TextStyle(fontSize: 50, fontWeight: FontWeight.w200),)
            ],
                  ),
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){// Elemento dinámico no constante.
            
            //Llamar la actualización dela pantalla para reenderizar los widget.
            setState(() {
              
              clickCounter++;
              clickCounter==1 ? textoPantalla = 'Click Realizado': textoPantalla = 'Clicks Realizados';
              
            });
          },
          child: const Icon(Icons.plus_one),
        ),
        );
  }

}

