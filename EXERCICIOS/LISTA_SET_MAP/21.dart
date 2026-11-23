void main() {
  List<double> notas = [7.5, 8.0, 6.5, 9.0, 5.5];
  // double media = (notas.reduce((a, b) => a += b)) / notas.length;
  int media = 5;
  if (media >= 6) {
    print("Aprovado");
  } else if (media < 3) {
    print("Reprovado");
  } else {
    print("Recuperação");
  }
}
