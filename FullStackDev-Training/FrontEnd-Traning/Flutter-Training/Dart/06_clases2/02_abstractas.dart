import '01_extends.dart';

/**
 * Define una clase como una base para extender otras nuevas.
 * Sirve como cascaron de otra clase.
 * Sirve para dar métodos y clases a otras instancias hijas.
 */

abstract class Vehiculo {
  //Propiedades
  bool encendido = false;
  
  //Metodos
  void encender(){
    encendido = true;
    print('Encendido');
  }

  void apagar(){
    encendido = false;
    print('Apagado');
  }

  bool revisarMotor();
}

class Carro extends Vehiculo{
  
  int kilometraje = 0;
  
  @override
  bool revisarMotor() {
    print('motor OK');
    return true;
  }

}
void main(List<String> args) {
  final ford = new Carro();

  ford.encender();
  ford.apagar();
  ford.revisarMotor();
  
}