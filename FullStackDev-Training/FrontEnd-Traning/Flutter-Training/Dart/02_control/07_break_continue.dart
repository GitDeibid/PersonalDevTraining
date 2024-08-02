void main(List<String> args) {
  print('For con break');
  for (var i = 0; i < 10; i++) {
    print(i);
    if (i>5) {
      break; // Interrumpe el ciclo completo.
    }
  }
  print('Nuevo for con continue');
  for (var i = 0; i < 10; i++) {
    
    if (i>5 && i<8) {
      continue; // Salta a la siguiente iteracion y no ejecuta las lineas que estén despues.
    }
    print(i);
  }
}