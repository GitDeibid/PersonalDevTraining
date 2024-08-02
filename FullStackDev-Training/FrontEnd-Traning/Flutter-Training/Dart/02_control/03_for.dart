import 'dart:io';

/**Bucle for en Dart.
 * Ingresar un dato de entrada para leer y transformarlo de str a num.
 * Base de la tabla de multiplicar.
 * Si ingresa el 2, se debe realizar la tabla del 2 desde el 1 hasta el 10.
 * 
 */

void main(List<String> args) {
  try {
    stdout.write('Ingresa un valor para obtener su tabla de multiplicar: ');
    String? n = stdin.readLineSync() ?? '0';
    int m = int.parse(n);

    stdout.writeln('La tabla del $m es: ');
    for (int i = 1; i < 11; i++) {
      stdout.writeln('$m * $i = ${m*i}');
    }

  } catch (e) {
    stdout.writeln('El valor ingresado no es válido...');
  }
}