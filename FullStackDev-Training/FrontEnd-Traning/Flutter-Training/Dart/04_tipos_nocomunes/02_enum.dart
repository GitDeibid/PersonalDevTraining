/**
 * Una enumeración es como una función. Se ubica fuera del main.
 */

void main(List<String> args) {
  //int volumen = 1;
  VolumenRadio volumen = VolumenRadio.alto;

  switch (volumen) {
    case VolumenRadio.bajo: print('Vol bajo'); break;
    case VolumenRadio.medio: print('Vol medio'); break;
    case VolumenRadio.alto: print('Vol alto'); break;

    default: print('Sin Volumen');
  }
}

enum VolumenRadio{ //Siempre se capitaliza.
  bajo,
  medio,
  alto
}