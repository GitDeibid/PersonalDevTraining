class Cuadrado{
  //Definir propiedades inmutables
  //Al definir como final, la propiedad no es modificable por fuera.
  final int lado;
  final int area;

  //Error
  /*Cuadrado(int lado, int area){
    this.lado = lado;
    this.area = area;
  }*/

  //Cuadrado(this.lado,this.area);
  Cuadrado(int lado): this.lado = lado,this.area=lado*lado; 

}
void main(List<String> args) {
  
  final cuadrado = new Cuadrado(10); //Es lo mismo que definir un get con el valor por defector de 10, pero nos ahorramos lineas de codigo.
  //cuadrado.lado=20; al definir como final dentro de la clase, dicha propiedad no puede ser modificada por fuera.

  print(cuadrado.area);
}