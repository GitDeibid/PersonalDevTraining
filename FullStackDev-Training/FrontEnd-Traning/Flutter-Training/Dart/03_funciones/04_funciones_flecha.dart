/**
 * Función comun y corriente resumida.
 * Perimte mejor visualización y entendimiento del código.
 */
void main(List<String> args) {
  int a=10, b=20;
  int resultado = sumarFlecha(10, 20);

  
  List<int> listado = [1,2,3,4,5,6,2,8,9,10,4,6,7,23,2,7];

  //var nuevoListado = listado.where((numero){return numero>2;});
  
  var nuevoListado = listado.where((n)=>n>2); //Esto retorna un iterable, el cual contiene métodos utiles para el manejo y control de datos.
  
  print(nuevoListado.toSet().toList());

}

int sumar(int x, int y){
  return x+y;
}

//Forma función de fleccha.
 int sumarFlecha(int x, int y) => x+y; //Se omite el return y parte de la estructura de la funcióon.