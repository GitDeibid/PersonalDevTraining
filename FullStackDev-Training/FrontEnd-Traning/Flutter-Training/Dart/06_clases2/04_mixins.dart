/**
 * Permite dar propiedades y métodos de una clase a otra.
 * Muy parecido a los extends.
 * - No pueden ser instanciados.
 * - No pueden tener constructores.
 * - Están hechos para heredar o transferir métodos a las otras clases.
 */


mixin Logger {
  //No pueden tener constructores
  void imprimir(String texto){
    final hoy = DateTime.now();
    print('$hoy :::: $texto');
  }
}

mixin Logger2 {
  //No pueden tener constructores
  void imprimir2(String texto){
    final hoy = DateTime.now();
    print('$hoy :::: $texto');
  }
}

abstract class Astro with Logger{
  String? nombre;
  Astro(){
    imprimir('-----Init del astro-----');
  }

  void existo (){
    imprimir('Existo....');
  }
}

class Asteroide extends Astro with Logger2{//Se puede extender y luego emplear un mixin.
  String? nombre;
  Asteroide(this.nombre){
    imprimir('Soy $nombre');
  }
}

void main(List<String> args) {
  final ceres = new Asteroide('ceres');

}