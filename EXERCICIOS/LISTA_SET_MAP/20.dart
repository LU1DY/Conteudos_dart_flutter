void main() {
  List<int> numeros = [10, 25, 3, 87, 42, 15];
  // int maior = 0;
  // for (int i = 0; i < numeros.length; i++) {
  //   if (maior < numeros[i]) {
  //     maior = numeros[i];
  //   }
  // }
  int maior = numeros.reduce((a, b) => a > b ? a : b);
  print(maior);
}
