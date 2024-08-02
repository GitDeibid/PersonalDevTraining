/**Entradas de información por del usuario
 * importar libreria de entrada
 */
import 'dart:io';
void main(List<String> args) {
  stdout.write('Hola mundo! sin salto de linea'); // Escribe o imprime el mensaje por pantalla en una linea continua.
  stdout.writeln('Hola mundo con salto del linea al final'); //Escribe o imprime con un salto de linea al final.

  String nombre = stdin.readLineSync() ?? 'no hay valor'; // Detine la ejecución del programa y espera la respuesta del usuario.

  stdout.writeln('Tu nombre es: $nombre');
  

}