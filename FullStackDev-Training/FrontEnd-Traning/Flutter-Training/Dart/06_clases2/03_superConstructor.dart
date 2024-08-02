/**
 * 
 */

class Persona {
  String nombre;
  int edad;

  Persona(this.nombre,this.edad);

  void imprimirNombre() => print('Nombre: $nombre - Edad: $edad');
}

class Cliente extends Persona{ //Implicitamente crea una instancia, y por lo tanto necesita argumentos.
  String direccion = '';
  List ordenes = [];

  Cliente(int edadActual, String NombreActual):super(NombreActual,edadActual){ //mediante los : se llama primero la instancia padre, instanciando persona antes de crear cliente mediante el constructor, lo que permite heredar los métodos y propiedades.
    
  }
}

void main(List<String> args) {
  
  final yo  = new Persona('David', 28);
  final c1 = new Cliente(30, 'Yiss');
  
  //yo.imprimirNombre();
  c1.imprimirNombre();
  
}