import 'Personagem.dart';

class Mago extends Personagem {
  int _mana = 0;
  int _forcaPoder = 0; //Força do poder do mago
  int _custoPoder = 0;

  Mago({
    required nome,
    required tribo,
    required vida,
    required this._mana,
    forcaAtaque,
    required pocaoCura,
    required this._forcaPoder,
    required this._custoPoder,
    required listaHabilidades,
  })
    //Personagem personagem = Personagem(nome: "Nome", tribo:"Tribo", vida: 100);
    : super(
         nome: nome,
         tribo: tribo,
         vida: vida,
         forcaPoder: forcaAtaque,
         pocaoCura: pocaoCura,
         listaHabilidades: listaHabilidades,
       );

  int get mana {
    return this._mana;
  }

  set mana(int mana) {
    this._mana = mana;
  }

  int get forcaPoder {
    return this._forcaPoder;
  }

  set forcaPoder(int forcaPoder) {
    this._forcaPoder = forcaPoder;
  }

  int get custoPoder {
    return this._custoPoder;
  }

  set custoPoder(int custoPoder) {
    this._custoPoder = custoPoder;
  }

  @override
  void atacar(int poder) {
    if (_mana >= _custoPoder) {
      print("O mago atacou com poder");
      _mana = _mana - _custoPoder;
    } else {
      super.atacar(poder);
    }
  }

  @override
  void consumirRecurso(int custo) {
    mana -= custo;
  }
}
