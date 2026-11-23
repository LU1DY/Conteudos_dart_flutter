void main() {
  List<int> numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  print("imprima todos");
  print(numeros);
  for (int i = 0; i < numeros.length; i++) {
    print(numeros[i]);
  }
  print('\n');

  print("adicione um número");
  numeros.add(11);
  print(numeros);
  print('\n');

  print("remova um número");
  numeros.remove(11);
  print(numeros);
  print('\n');

  print("encontre o tamanho da lista");
  print(numeros.length);
  print('\n');

  print("imprima o primeiro elemento");
  print(numeros[0]);
  print('\n');

  print("imprima o último elemento");
  print(numeros[numeros.length - 1]);
}
