/**
 * Factory puede ser utilizado para realizar un tipo de procedimiento o calculo, para determinar el mejor constructor para un escenario determinado.
 * 
 */
class Rectangulo{
  int? base;
  int? altura;
  int? area;
  String? tipo; //cuadrado => base=altura | rectangulo => base!=altura

  //Definir el constructor.
  factory Rectangulo(int base, int altura){
    //Regresar una instancia de la clase. 
    //Regresar una nueva instancia o una instancia previamente creada de la clase.
    //Un factory por si solo no crea una nueva instancia.
    if(base == altura){
      return Rectangulo.cuadrado(base);
    }else{
      return Rectangulo.rectangulo(base, altura);
    }

  }

  Rectangulo.cuadrado(int base){
    this.base=base;
    this.altura=base;
    this.area = base*base;
    this.tipo = 'Cuadrado';
  }

  Rectangulo.rectangulo(int base, int altura){
    this.base=base;
    this.altura=altura;
    this.area = base*altura;
    this.tipo = 'Rectangulo';    
  }

  @override
  String toString() => {'Base: ':base,'Altura':altura,'Area':area,'Tipo':tipo}.toString();
}
void main(List<String> args) {
  final figura = new Rectangulo(15,10);
  print(figura);
}