class Pessoa {
  String _cpf;
  int _idade;
  String _nome;
  bool _mula;

  Pessoa({
    required this._cpf,
    required this._idade,
    required this._nome,
    this._mula = false,
  });

  get cpf => this._cpf;

  set cpf(value) => this._cpf = value;

  get idade => this._idade;

  set idade(value) => this._idade = value;

  get nome => this._nome;

  set nome(value) => this._nome = value;

  get mula => this._mula;

  set mula(value) => this._mula = value;

  void apresentar() {
    print("""
Olá! Meu nome é ${nome} e tenho ${idade} anos de idade.
CPF: ${cpf}.
${mula ? "E eu sou uma mula" : ""}
""");
  }
}

class JogadorDoGremio extends Pessoa {
  int _numeroDaCamisa;
  int get numeroDaCamisa => this._numeroDaCamisa;

  set numeroDaCamisa(int value) => this._numeroDaCamisa = value;

  JogadorDoGremio({
    required String cpf,
    required int idade,
    required String nome,
    bool mula = true,
    required int numeroDaCamisa,
  }) : _numeroDaCamisa = numeroDaCamisa,
       super(cpf: cpf, idade: idade, nome: nome, mula: mula);

  @override
  void apresentar() {
    print("""
Olá! Meu nome é ${nome} e tenho ${idade} anos de idade.
CPF: ${cpf}.
O número da minha camisa é $numeroDaCamisa,
${mula ? "E eu sou uma mula" : ""}
""");
  }
}
