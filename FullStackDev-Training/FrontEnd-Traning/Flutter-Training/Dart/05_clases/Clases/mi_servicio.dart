/**
 * 1 constructor privado  (internal)
 * 2 propiedad privada
 * 3 propiedad factory (revisar singleton si tiene algun contenido)
 */
class MiServicio{
  //Propiedades
  String url = 'https://abc.cl';
  String key = 'ABC123';
  static final MiServicio _singleton = new MiServicio._internal(); //MAntiene en memoria la instancia de la clase. | Al ponerse privada, se puede controlar la forma en la que se llama.
  
  factory MiServicio(){
    return _singleton; //Devuelve la instancia con el espacio de memoria creado en la propiedad singleton.
  }

  MiServicio._internal(); //_ privatiza el constructor. Unicamente es accesible dentro de la clase. | Genera una instancia

}