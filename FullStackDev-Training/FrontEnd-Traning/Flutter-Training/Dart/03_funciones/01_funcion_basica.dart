/**Fuciones basicas en dart:
 * Normalmente se relacionan los paréntesis a las funciones.
 * la definición de funciones se hace entre llaves {}.
 * la ejecución de funciones se hace mediante ().
 * 
 * Al declarar como void, la salida de la función no puede ser asignada a una variable.  
 */
void main(List<String> args) {
  var mensaje = saludar();
  print(mensaje);
}

// Se debe indicar el tipo de valor de retorno.

String saludar(){
  return 'Hola ¿como estás?';
}