/**
 * Es una tarea asincrona que se resolverá en un futuro.
 * Se rompe el enlace secuencial del codigo.
 * Peticiones HTTP.
 * Lectura de archivos de manera asincrona.
 * El programa sigue ejecutandose.
 */
void main(List<String> args) {
  //Puede resolver cualquier tipo de dato, al finalizar la tarea puede devolver cualquier tipo de dato.


  Future<String> timeout = Future.delayed(Duration(seconds: 3), (){
    print('3 segundos despues...');
    return 'Resolución del future'; //Las promesas no retornan valores, resuelven un tipo de dato.
  }); 

  //La promesa se resuelve a través del then.
  //timeout.then((texto) => print(texto));
  timeout.then(print);

  print('Fin del main');
}