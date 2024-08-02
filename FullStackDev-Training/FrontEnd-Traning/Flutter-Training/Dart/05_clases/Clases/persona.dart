class Persona{
  //Campos y propiedades
  String? nombre;
  int? edad;
  String? des;
  String _codigo; //Define una propiedad privada.
  
  //El guion bajo permite definir propiedades o métodos privados, los cuales pueden ser usados únicamente dentro del ccontexto en el que son definidos.

  //Get y Sets
  //tipo que devuelve el método. sin paréntesis. 
  String get codigo { //NJombre de la propiedad sin guion bajo.
    return 'El codigo es: $_codigo';    
  }
  String get nombre_codigo => 'Hola $nombre, tu code es: $_codigo';
  //Constructores
  //Debe tener el mismo nombre de la clase.
  //Al enviarle argumentos, entonces es posible crear varios objetos como si se tratase de funciones.

  /*Persona(String nombre, int edad, String des, String codigo){
    //print('Constructor.'); //Se ejecuta primero.
    //_codigo = 'Codigo vacío'; // Tiene prioridad sobre el valor por defecto que se hace en la declaración de la propiedad.
    this.nombre = nombre;
    this.edad = edad;
    this.des = des;
    this.codigo = codigo;
  }*/

  /*Otra forma de establecer el constructor de una clase */
  //Persona(this.nombre,this.edad,this.des,this._codigo);

  /*Es posible crear objetos con argumentos posicionales y por nombre*/
  Persona(this.nombre,this.edad,this._codigo,{this.des='Ing...'});
  //Sobrecarga de constructores- | Se debe dar un nombre a los constructores que exigen diferente cantidad de argumentos.
  Persona.persona20(this.nombre,this._codigo){
    this.edad=20;
  }

  set codigo(String texto) => _codigo=texto;

  //Métodos
  @override //Override es un decorador que le dice a dart que debe sobreescribir el método padre de ese objeto.
  String toString() => '$nombre - $edad, $des _ $_codigo';   //Funcion de flecha.
}