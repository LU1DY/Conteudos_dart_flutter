import 'veiculos.dart';

class Moto extends Veiculos {
  int _cilindradas;
  String _tipo;
  double _diaria;

  Moto({
    required this._cilindradas,
    required this._tipo,
    this._diaria = 90,
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

  get cilindradas => this._cilindradas;

  set cilindradas(value) => this._cilindradas = value;

  get tipo => this._tipo;

  set tipo(value) => this._tipo = value;

  get diaria => this._diaria;

  set diaria(value) => this._diaria = value;

  @override
  void exibirDados() {
    print("""
Veículo: $marca $modelo $ano está ${disponivel ? "disponível" : "indisponível"}.
Placa: $placa.
Cilindradas: $cilindradas.
Tipo: $tipo.
Sua diária é de $diaria reais.
""");
  }

  @override
  double calcularDiaria() {
    return diaria;
  }
}
