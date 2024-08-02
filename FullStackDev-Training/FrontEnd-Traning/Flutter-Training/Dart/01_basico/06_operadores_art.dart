/**
 * Operadores aritméticos en Dart.
 */
void main(List<String> args) {
  // Asignación.
  int a = 10;
  int? b;

  b ??= 20; // Asigna el valor unicamente si la variable es null.

  print(b);

  // Operadores condicionales. ?-> Operador condicional ternario.
  int c = 30;
  String resp = c > 25 ? 'C es mayor a 25':'C es menor que 25';

  print(resp);

  // opcional. Si el valor de más a la izquierda de la expresión es null, asignará el valor de la derecha que encuentre con un valor distinto de null.

  int d = b ?? a ?? 100;
  print(d);

  // Operadores relacionales. Todos retornan un booleano.
  /**
   * > mayor que
   * < menor que
   * >= mayor o igual que
   * <= menor o igual que
   * == igualdad
   * != diferencia
   */

  String persona1 = 'Alberto';
  String persona2 = 'Roberto';

  //print(persona1 == persona2);
  //print(persona1 != persona2);
  
  int x=20; int y=30;

  print(x>y);

  int i = 10;
  String j = '10';

  // Operador de tipo is

  print(i is int);
  print(j is! int); //Pregunta por la negación.

  
}