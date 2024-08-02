import 'dart:io';

/**Senticias de control de flujo
 * Control de flujo con condiciones.
 */
void main(List<String> args) {
  stdout.writeln('¿Cual es tu edad?: ');
  String? edad =  stdin.readLineSync() ?? '0';

  try {
      int n = int.parse(edad);
      
      if (n>=21) {
        stdout.writeln('Ciudadano...');        
      }else if (n>=18) {
        stdout.writeln('Mayor de edad...');
      }else{
        stdout.writeln('menor de edad...');
      }
  } catch (e) {
    stdout.writeln('Error la edad es incorrecta.');
  }

  

  
  
}