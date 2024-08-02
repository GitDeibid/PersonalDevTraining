import 'dart:async';

/**
 * Es una corriente de datos. 
 * En cualquier momento se puede obtener una información.
 * Son asincronos, es decir, se disparan o ejecutan una vez que se añade información al stream de datos.
 * Desprende un nuevo hilo al momento de que el programa recibe nueva información.
 * ---
 * Para controlar un error, debo de hacerlo en la definición de mi stream...
 * ---
 * Al trabajar con stream es posible cancelarlos al conocer que ya no se obtendrá más información.
 * ---
 * Es posible tipar el stream, para controlar el tipo de datos que acepta.
 * ---
 * Existen stream de una sola suscripción y de multiples suscripciones.
 */

void main(List<String> args) {
  
  final streamController = new StreamController<String>(); //Al no mutar se puede definir como final. | Al incluir el <String> significa que el stream considera solo información de tipo string.
  //final streamController = new StreamController<String>.broadcast(); // Permite trabajar con multiples listener en el mismo programa, permitiendo diferentes suscripciones. | Es de varias suscripciones.

  streamController.stream.listen(
    (data)=>print('Despegando! $data'),
    onError: (err)=> print('Error al ejecutar stream...$err'),
    onDone: () => print('Misión completada'),
    cancelOnError: false //Detiene la ejecución del programa al encontrar el error.
  );


  streamController.sink.add('Apollo 11');
  streamController.sink.add('Apollo 12');
  streamController.sink.addError('Tenemos un problema....');
  streamController.sink.add('Apollo 13');

  streamController.sink.close();//Finaliza el Stream
  //streamController.sink.add('Apollo 14');

  print('Fin del main');
}