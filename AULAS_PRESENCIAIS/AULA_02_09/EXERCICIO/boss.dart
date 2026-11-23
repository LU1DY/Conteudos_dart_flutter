class Boss {
  String _nome;
  int _poder;
  int _vida;

  Boss({required this._nome, required this._poder, required this._vida});

  get nome => this._nome;

  set nome(value) => this._nome = value;

  get poder => this._poder;

  set poder(value) => this._poder = value;

  get vida => this._vida;

  set vida(value) => this._vida = value;

  void atacar() {
    print("O personagem $nome atacou com a espada");
  }

  bool dano(int danoSofrido) {
    if (danoSofrido <= vida) {
      print("O personagem $nome desfaleceu");
      return false;
    } else {
      vida -= danoSofrido;
      return true;
    }
  }
}
