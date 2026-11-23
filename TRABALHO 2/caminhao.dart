import 'veiculos.dart';

class Caminhao extends Veiculos {
  double _capacidadeCarga;
  int _numeroEixos;
  double _diaria;

  Caminhao({
    required this._capacidadeCarga,
    required this._numeroEixos,
    this._diaria = 0.5,
    required int ano,
    required bool disponivel,
    required String marca,
    required String modelo,
    required String placa,
  }) : super(
         ano: ano,
         disponivel: disponivel,
         marca: marca,
         modelo: modelo,
         placa: placa,
       );

  get capacidadeCarga => this._capacidadeCarga;

  set capacidadeCarga(value) => this._capacidadeCarga = value;

  get numeroEixos => this._numeroEixos;

  set numeroEixos(value) => this._numeroEixos = value;

  double get diaria => this._diaria;

  set diaria(double value) => this._diaria = value;

  @override
  void exibirDados() {
    print("""
Veículo: $marca $modelo $ano está ${disponivel ? "disponível" : "indisponível"}.
Placa: $placa.
Capacidade de carga: $capacidadeCarga.
Número de eixos: $_numeroEixos.
Sua diária é de $diaria reais.
""");
  }

  @override
  double calcularDiaria() {
    return diaria * capacidadeCarga;
  }
}
