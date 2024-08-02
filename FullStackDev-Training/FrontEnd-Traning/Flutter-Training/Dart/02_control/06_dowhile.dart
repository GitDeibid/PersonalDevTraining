import "dart:io";
void main(List<String> args) {
  stdout.write('Ingresa una opción (Y/N): ');
  String op = '';
  String? continuar = stdin.readLineSync() ?? 'Y';
  op = continuar.toUpperCase();
  int contador = 0;

  do {
    contador++;
    stdout.writeln('Contador: $contador');
    stdout.write('¿Desea continuar? (Y/N): ');
    continuar = stdin.readLineSync() ?? 'Y';
    op = continuar.toUpperCase();

  } while (op == 'Y');

  stdout.writeln('El contador final marca $contador intentos');
}