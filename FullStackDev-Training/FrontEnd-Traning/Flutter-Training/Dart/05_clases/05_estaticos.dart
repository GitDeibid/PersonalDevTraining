class Herramientas{
  static const List<String> h = ['Martillo','Llave Inglesa','Desarmador']; //Propiedad estática la cual no debería ser modificada, para poder utilizarla en codigo. Se usa const para no modificar.

  //Metodo estatico
  static void imprimirLista() => h.forEach(print);
}

void main(List<String> args) {
  final herramienta = new Herramientas();

  //Herramientas.h.add('value');//Error

  Herramientas.imprimirLista();
}