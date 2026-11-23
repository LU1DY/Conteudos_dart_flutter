class Personagem {
  String _nome;
  String _tribo;
  int _vida;
  int _poderEspada;

  Personagem({required this._nome, required this._tribo, required this._vida, required this._poderEspada});

  get nome => this._nome;

  set nome(value) => this._nome = value;

  get tribo => this._tribo;

  set tribo(value) => this._tribo = value;

  get vida => this._vida;

  set vida(value) => this._vida = value;

  int get poderEspada => this._poderEspada;

  set poderEspada(int value) => this._poderEspada = value;

  void atacar() {
    print("O boss $nome atacou com a espada");
  }

  bool dano(int danoSofrido) {
    if (danoSofrido <= vida) {
      print("O boss $nome desfaleceu");
      return false;
    } else {
      vida -= danoSofrido;
      return true;
    }
  }
}
