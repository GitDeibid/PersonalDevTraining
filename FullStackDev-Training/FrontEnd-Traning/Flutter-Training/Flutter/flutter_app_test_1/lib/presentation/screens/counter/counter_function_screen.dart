import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {

  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {

  int clickCounter = 0;
  String textoPantalla='Clicks Realizados';

  @override
  Widget build(BuildContext context) {
    return Scaffold(//Permite utilizar Material como layout base.
        //child: hijos, algunos widget pueden recibir multiples hijos.
        //body: Center(child: Text('Counter Screen')),
        appBar: AppBar(
          title: const Text('Counter Functions'),centerTitle: true,
          leading: const Icon(Icons.home),
          actions: [
            IconButton(
              onPressed:(){
                setState(() {
                  clickCounter=0;//Establece el valor del contador en 0.
                });
              } , 
              icon: const Icon(Icons.refresh)),
          ],
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
        //Debido a que floatingActionButton recibe un widget, es posible entonces entregarle una columna de botones.
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomFAButton(
              icono: Icons.refresh_rounded,
              alPresionar: () => setState(() {
                  clickCounter=0;
                })
            ),
            const SizedBox(height: 10,),//Espacio entre botones.
            CustomFAButton(
              icono: Icons.plus_one_rounded,
              alPresionar: () => setState(() {
                clickCounter++;
                clickCounter==1 ? textoPantalla = 'Click Realizado': textoPantalla = 'Clicks Realizados';
              }),
              ),
            const SizedBox(height: 10,),
            CustomFAButton(
              icono: Icons.exposure_minus_1_rounded,
              alPresionar: () => setState(() {
                clickCounter--;
                clickCounter==1 ? textoPantalla = 'Click Realizado': textoPantalla = 'Clicks Realizados';
              }),
              ),
          ],
        )
        
        );
  }

}

class CustomFAButton extends StatelessWidget {
  final IconData icono;
  final VoidCallback? alPresionar;
  
  const CustomFAButton({
    super.key, 
    required this.icono, 
    this.alPresionar,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const StadiumBorder(),
      /*
      onPressed: (){// Elemento dinámico no constante.
        
        //Llamar la actualización dela pantalla para reenderizar los widget.
        setState(() {
          
          clickCounter++;
          clickCounter==1 ? textoPantalla = 'Click Realizado': textoPantalla = 'Clicks Realizados';
          
        });
      },*/
      onPressed: alPresionar,
      child: Icon(icono), //No puede ser una constante pq el icono lo pasa le padre.
    );
  }
}

