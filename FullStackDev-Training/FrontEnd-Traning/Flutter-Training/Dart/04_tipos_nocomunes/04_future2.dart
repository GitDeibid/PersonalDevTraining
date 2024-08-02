import 'dart:io';

/**
 * Podemos realizar la lectura de archivos por medio de promesas para no bloquear el programa mientras realiza la lectura de archivos con mucha información.
 * 
 */
void main(List<String> args) {
  print(Directory.current.path);
  //OSx y Linux
  //File file = new File(Directory.current.path + '/FullStackDev-Training/FrontEnd-Traning/Dart/04_tipos_nocomunes/assets/personas.txt');
  //Windows
  File file = new File(Directory.current.path + '\\FullStackDev-Training\\FrontEnd-Traning\\Dart\\04_tipos_nocomunes\\assets\\personas.txt');

  Future<String> F = file.readAsString();
  String T = file.readAsStringSync(); // De esta manera el programa prioriza la lectura del archivo antes de continuar con su ejecución.

  //F.then((d)=>print(d));
  print(T);

  print('Fin del main');
}