main(){
  //Numeros: var, const, int, final, etc
  var a = 10;//Inferencia de tipo.
  double b = 5.5;
  int? c;

  int _a=10;
  double $b=30;

  print(_a + $b);

  //String: Cadenas de caracteres. 
  var nombre = 'Yiss';//Inferencia de tipo.
  String nombre2 = 'Danilo'; //Tipo String. Cadena. 
  String nombre3 = "Danilo"; //Comilla doble 
  String nombre4 = "O'Higgins";//Puede usarse comilla doble para 'escapar' los apostrofes intermedios, o bien usar un \ backslash.

  String multilinea = '''
Para concatenar debemos usar el simbolo \$
el nombre1 es: $nombre
el nombre2 es: $nombre2
el nombre3 es: $nombre3
el nombre4 es: $nombre4
de esta forma...
''';

  print(multilinea);//Es posible concatenar con +

  //Booleanos: 
  var activo;//Infiere tipo de dato dynamic -> puede ser cualquier cosa.
  bool encendido = true;
  bool apagado = !encendido;//Negación de un booleano. 


  print(apagado);

  //Listas: Colección de datos comunes entre si. 
  var frutas = ['Manzana', 'Plátano','Naranja'];
  var objetos = ['Manzana', 'Plátano','Naranja',1,2.0,true];//Tipo de dato común en dart corresponde a objeto.
  //List<String> verduras = new List(); ---> Deprecated / Obsoleto.
  List<String> verduras = ['Tomate','Lechuga','Brócoli'];

  verduras[0] = 'Cebolla';

  print(verduras);

  //Sets: parecidos a la listas.
  var loza = { 'plato', 'taza','vaso' };
  print(loza);

  loza.add('bandeja');//Añadir elemento al set. 
  loza.add('bandeja');//Los elementos repetidos no se agregarán, a diferencia de las listas... 
  loza.add('bandeja');//Los elementos repetidos no se agregarán, a diferencia de las listas... 
  loza.add('bandeja');//Los elementos repetidos no se agregarán, a diferencia de las listas... 

  //Para eliminar valores duplicados, puede convertirse una lista a set, mediante el método .toSet(), y volver a convertirla en lista mediante .toList()
  print(loza);

  //Maps: Diccionarios./Objetos literales.

  var galleta = {
    'sabor':'chocolate',
    'marca':'costa',
    'contenido neto':140
  }; //print(galleta['marca']); para obtener un valor único. No funciona el operador '.'

  Map<int, String> nombres = {
    1:'David',
    2:'Yiss',
    3:'Benja'
  };

  print(galleta['marca']); //Para retornar los valores de un mapa se debe especificar la llave en el formato correspondiente. mapa[llave] -> llave: int, string, double...

  //otra forma de definición.

  Map<String, dynamic> libro = new Map();

  //libro.addAll(nombres);

  libro.addAll({
    'titulo':'harry potter',
    'editorial':'la española',
    'autor':'J. K. Rowling'
  });

  print(libro);

}