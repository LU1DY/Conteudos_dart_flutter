void main() {
  Celular celular = Celular("Preto", 6, 0.20, 0.800);
  print(celular.cor);
  print(celular.toString());
  print("O celular custa ${celular.calcularPreco(150.99)} reais.");
}

class Celular {
  final String cor;
  final int qtdPros;
  final double tamanho;
  final double peso;

  Celular(this.cor, this.qtdPros, this.tamanho, this.peso);

  String toString() {
    return """
      Cor: $cor,
      Quantidade de Processadores: $qtdPros,
      Tamanho: $tamanho,
      Peso: $peso
""";
  }

  double calcularPreco(double preco) {
    return preco * this.qtdPros;
  }
}
