class Produto {
  String nome;
  double _preco;

  Produto(this.nome, this._preco);

  double get getPreco => this._preco;
  set preco(double valor) {
    if (valor > 0) {
      _preco = valor;
    }
  }
}

void main() {
  Produto DMT = Produto("Dispositivo de Manobra Tridimencional", 300000);

  print(DMT.getPreco);
  DMT.preco = 5000000;
  print(DMT.getPreco);
}
