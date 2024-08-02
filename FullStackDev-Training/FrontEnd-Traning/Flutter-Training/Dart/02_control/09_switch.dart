/**Switch
 * es posible establecer condiciones para casos determinados, es decir a partir de valores no calculados.
 */
import 'dart:math';

void main(List<String> args) {
  int rnd = Random().nextInt(7);

  switch (rnd) {
    case 0:
      print('Lunes');
    case 1:
      print('Martes');
    case 2:
      print('Miércoles');
    case 3:
      print('Jueves');
    case 4:
      print('Viernes');
    case 5:
      print('Sábado');
    case 6:
      print('Domingo');
      break;
    default:
      print('No es un día de la semana....');
  }
  //print(rnd);
}