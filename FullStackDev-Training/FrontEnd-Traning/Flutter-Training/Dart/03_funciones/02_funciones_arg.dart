/**Funciones con argumentos. 
 * Argumentos posicionales -> Son requeridos por la función, deben otorgarse para poder ejecutarla.
 * Argumento con nombre -> Son Opcionales para la función, pero pueden requerirse mediante la palabra reservada required.
 * Argumento por defecto -> Se establece su valor en la definición de la función.
 * Al añadir las [] en la zona de argumentos de la función, significa que son opcionales.
*/
void saludar( String mensaje, [String nombre = '{Inserte nombre}', int Edad = 20] ){ // Argumentos posicionales por defecto..-
  print('$mensaje:$nombre - $Edad');
}

void saludar2( String? saludo, { //Al añadir las llaves, los argumentos posicionales se convierten en argumentos por nombre.  
  required String nombre, //Exige la presencia de un argumento por nombre en la función.
  int? edad //Se utiliza ? para el null safety 
}){
  //Cuerpo de la función.
  print('$saludo $nombre ¿Como estás? - $edad');

}

void main(List<String> args) {
  
  saludar('Hola','David',30);
  saludar2('Saludos!!!',nombre: 'Deibid');

}