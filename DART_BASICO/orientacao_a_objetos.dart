class Carro {
  final String marca;
  int _valor = 9000;

  Carro(this.marca);
  int get getValor => _valor;
  void set setValor(int novoValor) => _valor = novoValor;
}
