/**
 * Permite obtener las propiedades y metodos de otra clase al crear una nueva diferenciada a partir de la base anterior.
 */

class Vehiculo {
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
}

class Carro extends Vehiculo{
  int kilometraje = 0;

}
void main(List<String> args) {
  final ford = new Carro();

  ford.encender();
  ford.apagar();

}