import 'cliente.dart';
import 'veiculos.dart';

class Locacao {
  Cliente _cliente;
  Veiculos _veiculo;
  int _dias;
  double _valorTotal;
  bool _ativa;

  Locacao({
    required this._cliente,
    required this._veiculo,
    required this._dias,
    required this._valorTotal,
    required this._ativa,
  });

  get cliente => this._cliente;

  set cliente(value) => this._cliente = value;

  get veiculo => this._veiculo;

  set veiculo(value) => this._veiculo = value;

  get dias => this._dias;

  set dias(value) => this._dias = value;

  get valorTotal => this._valorTotal;

  set valorTotal(value) => this._valorTotal = value;

  get ativa => this._ativa;

  set ativa(value) => this._ativa = value;

  double calcularValor() {
    return 0;
  }
  void finalizar() {}
  void exibirResumo() {}
}
