class Cliente {
  String _nome;
  String _cpf;
  int _telefone;
  String _cnh;
  bool _bloqueado;

  Cliente({
    required this._nome,
    required this._cpf,
    required this._telefone,
    required this._cnh,
    required this._bloqueado,
  });

  get nome => this._nome;

  set nome(value) => this._nome = value;

  get cpf => this._cpf;

  set cpf(value) => this._cpf = value;

  get telefone => this._telefone;

  set telefone(value) => this._telefone = value;

  get cnh => this._cnh;

  set cnh(value) => this._cnh = value;

  get bloqueado => this._bloqueado;

  set bloqueado(value) => this._bloqueado = value;

  void exibirDados() {
    print("""
Cliente $nome está ${!bloqueado ? "ativo" : "bloqueado"}.
Telefone: $telefone.
CPF: $cpf.
CNH: $cnh.
""");
  }

  void liberar() {
    if (!bloqueado) {
      bloqueado = true;
    }
  }

  void bloquear() {
    if (bloqueado) {
      bloqueado = false;
    }
  }
}
