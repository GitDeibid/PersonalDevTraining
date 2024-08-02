/**Label for con estructuras de control ciclicas anidadas
 * 
 */
void main(List<String> args) {
  labelfor1:
  for (int i = 0; i < 5; i++) {
    print('Valor de i: $i');
    labelfor2:
    for (int j = 0; j < 5; j++) {
      print('Valor de j: $j');
      if (j==2){
        break labelfor1;
      }
    }
  }
}