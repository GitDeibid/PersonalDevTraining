/**
 * Dart envia siempre los objetos por referencia, es decir, se hace uso del puntero en memoria, modificando la propiedad en el espacio de memoria original...
 * Objetos como mapas arreglos, son mandados como referencia.
 * Es posible romper la referencia de los objetos. Para eso se utiliza el operador <...> tres puntos o spread que esparse las propiedades del objeto.
 * Argumentos primitivos son enviados por valor.
 */


String cap(String texto){ //Argumentos de tipo primitivo son enviados por valor.
  texto = texto.toUpperCase(); //Se crea una nueva variable - Se crea un nuevo espacio de memoria para modificar el valor.
  return texto;
}

Map<String,String> capMAP(Map<String,String> mapa){
  //Ruptura de referencia.
  mapa = {... mapa};
  
  mapa['Nombre'] = mapa['Nombre']?.toUpperCase() ?? 'No hay nombre'; //Ante la posibilidad de recibir un valor nulo, se emplea el operador condicional ?? para establecer un valor por defecto.

  return mapa;
}

void main(List<String> args) {
  String nombre = 'David';
  String nombre2 = cap(nombre);  

  print([nombre,nombre2]);


  Map<String,String> persona = {
    'Nombre':'Daniel'
  };

  Map<String,String> persona2 = capMAP(persona);

  print([persona,persona2]);
}