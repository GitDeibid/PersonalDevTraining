main(){
  var a = 10;     // Asignable
  final b = 10;   //Más eficiente en memoria. No sabe si se va a modificar.
  const c = 10;   //Espacio de memoria en tiempo de compilación. No se va a modifcar.

  late final double x; //Iniciar la variable después en el código.

  x=10;
  print(x);


  final nombreFinal = ['David', 'Yiss', 'Benja'];// Es posible modificar los valores mediante los métodos de la lista.
  const nombreConst = ['David', 'Yiss', 'Benja'];

  //Alternativas al tipo de declaración.
  final List<String> nombres1 = ['David', 'Yiss', 'Benja'];
  List<String> nombres2 = const ['David', 'Yiss', 'Benja'];

  //nombreFinal = [] //Esto da error, debido a que se está diciendo que apunte a un nuevo espacio de memoria, debido a que no es posible reasignar el valor, se obtiene un error.

  nombreFinal.add('Coni');
  //nombreConst.add('Coni');//Error debido a que no es modifcable.

  print(nombreFinal);

  //Trabajando con late.




}