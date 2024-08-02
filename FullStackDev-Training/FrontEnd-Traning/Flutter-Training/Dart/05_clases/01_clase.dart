/**
 * Programación orientada a objetos.
 * Objeto -> propiedades.
 *  Las clases deben estar en otra ubicación, no en el main. 
 * Tratar de limpiar el main lo más posible.
 * 
 */
import "Clases/persona.dart";
void main(List<String> args) {
  /*final persona = {
    'nombre':'David',
    'edad':28
  };*/

  //print(persona);

  //usar la clase para crear una variable.
  //final p1 = new Persona(); //Similar a una función. | se declara como final para las propiedades y métodos.
  //final p2 = new Persona();

  /*p1.nombre = 'David';
  p1.edad = 28;
  p1.des = 'Estudiante y profesional';*/

  //Otra forma de construir el objeto.

  /*p2..nombre='Yiss'
    ..edad = 28
    ..des = 'Ing civil industrial';*/

  //print(p1);
  //p2.codigo = 'C123DG35F'; //USA EL SETTER PARA ESTABLCER EL VALOR DE LA PROPIEDAD.
  //print(p1.codigo);
  //print(p2.nombre_codigo);

  //----------------------------USO DE CONSTRUCTORES.--------------------------------
  final p1 = new Persona('David', 28, 'Ing Informática');
  final p2 = new Persona('David', 28, '3K5N2L3N4',des: 'Ing Informática');
  final p3 = new Persona.persona20('Yiss','C824564KK3');

  print(p1);
  print(p2);
  print(p3);
  
}

