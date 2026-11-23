import 'personagem.dart';

class Arqueiro extends Personagem {
  int _qtdFlechas;
  int _forcaFlecha;

  Arqueiro({
    required String tribo,
    required int vida,
    required String nome,
    required int poderEspada,
    required this._qtdFlechas,
    required this._forcaFlecha,
  }) : super(nome: nome, tribo: tribo, vida: vida, poderEspada: poderEspada);

  get getQtdFlechas => this._qtdFlechas;

  set setQtdFlechas(qtdFlechas) => this._qtdFlechas = qtdFlechas;

  get forcaFlecha => this._forcaFlecha;

  set forcaFlecha(value) => this._forcaFlecha = value;

  @override
  void atacar() {
    if (getQtdFlechas > 0) {
      print("O arqueiro atacou com flechas.");
    } else {
      super.atacar();
    }
  }
}
