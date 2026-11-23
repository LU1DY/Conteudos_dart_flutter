void main() {
  Set<int> numeros = {1, 2, 3, 4, 5};
  numeros.add(1);
  numeros.remove(1);
  print(numeros.contains(33));
  print(numeros);
}
