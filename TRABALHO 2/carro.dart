import 'veiculos.dart';

class Carro extends Veiculos {
  int _numero_portas;
  String _tipoCombustivel;
  double _diaria;

  Carro({
    required this._numero_portas,
    required this._tipoCombustivel,
    this._diaria = 150,
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

  get numero_portas => this._numero_portas;

  set numero_portas(value) => this._numero_portas = value;

  get tipoCombustivel => this._tipoCombustivel;

  set tipoCombustivel(value) => this._tipoCombustivel = value;

  double get diaria => this._diaria;

  set diaria(double value) => this._diaria = value;

  @override
  void exibirDados() {
    print("""
Veículo: $marca $modelo $ano está ${disponivel ? "disponível" : "indisponível"}.
Placa: $placa.
Número de portas: $numero_portas.
Combustível: $tipoCombustivel.
Sua diária é de $diaria reais.
""");
  }

  @override
  double calcularDiaria() {
    return diaria;
  }
}

void main() {
  
}
