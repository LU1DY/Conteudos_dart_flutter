import 'personagem.dart';

class Mago extends Personagem {
  int _mana;
  int _forcaPoder;
  int _custoPoder;

  Mago({
    required this._mana,
    required this._forcaPoder,
    required this._custoPoder,
    required String tribo,
    required int vida,
    required String nome,
    required int poderEspada,
  }) : super(nome: nome, tribo: tribo, vida: vida, poderEspada: poderEspada);

  get mana => this._mana;

  set mana(value) => this._mana = value;

  get forcaPoder => this._forcaPoder;

  set forcaPoder(value) => this._forcaPoder = value;

  get custoPoder => this._custoPoder;

  set custoPoder(value) => this._custoPoder = value;

  @override
  void atacar() {
    if (mana >= custoPoder) {
      print("O mago atacou com magia");
      mana -= custoPoder;
    } else {
      super.atacar();
    }
  }
}
