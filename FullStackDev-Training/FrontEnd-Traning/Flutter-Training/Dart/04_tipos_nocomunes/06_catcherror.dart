/**
 * El manejo de errores debe utilizarse siempre que se pueda al trabajar con promesas.
 */
void main(List<String> args) {
  //Puede resolver cualquier tipo de dato, al finalizar la tarea puede devolver cualquier tipo de dato.


  Future<String> timeout = Future.delayed(Duration(seconds: 3), (){
    if (1==1) {
      throw 'Error de programacion';
    }
    return 'Resolución del future'; //Las promesas no retornan valores, resuelven un tipo de dato.
  }); 

  //La promesa se resuelve a través del then.
  //timeout.then((texto) => print(texto));
  timeout.then(print)
    .catchError((error)=>print(error));

  print('Fin del main');
}