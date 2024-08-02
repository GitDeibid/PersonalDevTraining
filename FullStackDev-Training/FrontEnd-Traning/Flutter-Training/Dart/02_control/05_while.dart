import 'dart:io';

void main(List<String> args) {
  stdout.write('Ingresa una opción (Y/N): ');
  String op = '';
  String? continuar = stdin.readLineSync() ?? 'Y';
  op = continuar.toUpperCase();
  int contador = 0;

  while (op == 'Y') {
    contador++;
    stdout.writeln('Contador: $contador');
    stdout.write('¿Desea continuar? (Y/N): ');
    continuar = stdin.readLineSync() ?? 'Y';
    op = continuar.toUpperCase();

  }

  stdout.writeln('El contador final marca $contador intentos');
}