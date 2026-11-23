import 'habilidade.dart';

class Personagem {
  String _nome = "";
  String _tribo = "";
  int _vida = 0;
  int _forcaPoder = 0;
  int _pocaoCura = 0;
  List _listaHabilidades;

  Personagem({
    required this._nome,
    required this._tribo,
    required this._vida,
    required this._forcaPoder,
    required this._pocaoCura,
    required this._listaHabilidades,
  });

  get listaHabilidades => this._listaHabilidades;

  set listaHabilidades(value) => this._listaHabilidades = value;

  int get pocaoCura => this._pocaoCura;

  set pocaoCura(int value) => this._pocaoCura = value;
  String get nome {
    return _nome;
  }

  set nome(String nome) {
    this._nome = nome;
  }

  String get tribo {
    return _tribo;
  }

  set tribo(String tribo) {
    this._tribo = tribo;
  }

  int get vida {
    return _vida;
  }

  set vida(int vida) {
    this._vida = vida;
  }

  int get forcaPoder {
    return _forcaPoder;
  }

  set forcaPoder(int forcaPoder) {
    _forcaPoder = forcaPoder;
  }

  void atacar(int poder) {
    print("O $_nome atacou com a espada e causou $poder de dano");
  }

  bool receberDano(int dano) {
    if (dano >= _vida) {
      print("O personagem morreu");
      return false;
    } else {
      _vida -= dano;
      return true;
    }
  }

  void imprimir() {
    print("O personagem $_nome tem $_vida de vida");
  }

  void consumirRecurso(int custo) {
    print("Consumindo recurso...");
  }
}
