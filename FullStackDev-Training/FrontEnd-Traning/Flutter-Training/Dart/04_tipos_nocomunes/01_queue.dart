import 'dart:collection';

void main(List<String> args) {
  Queue<int> cola = new Queue();
  cola.addAll([1,2,3,4,5,6,2]);

  Iterator i = cola.iterator;

  while (i.moveNext()) {
    print(i.current);
  }
}