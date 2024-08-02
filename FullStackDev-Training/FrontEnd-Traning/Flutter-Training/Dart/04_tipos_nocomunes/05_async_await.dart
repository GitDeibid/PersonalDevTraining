import 'dart:io';

/**
 * Async transforma una función en una promesa
 * Await Permite ejecutar las promesas como si fueran una función sincronica normal, sin embargo, es necesario que se utilice dentro de una función de tipo async...
 */
void main(List<String> args) async {
  
  String path = Directory.current.path + '\\FullStackDev-Training\\FrontEnd-Traning\\Dart\\04_tipos_nocomunes\\assets\\personas.txt';

  //leerArchivo(path).then(print);
  //imprimirPromesa().then(print);

  String texto = await leerArchivo(path); 
  print(texto);

  print('Fin del main');
  
}

Future<String> leerArchivo( String path ){

  File file = new File(path);

  return file.readAsString();
}

Future imprimirPromesa() async {

  return 'Mensaje prometido!!!';
}