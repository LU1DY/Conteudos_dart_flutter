class Habilidade {
  String _nome;
  int _custoMana;
  int _dano;
  String _personagemDono;

  Habilidade({
    required this._nome,
    required this._custoMana,
    required this._dano,
    required this._personagemDono,
  });

  get nome => this._nome;

  set nome(value) => this._nome = value;

  get custoMana => this._custoMana;

  set custoMana(value) => this._custoMana = value;

  get dano => this._dano;

  set dano(value) => this._dano = value;

  get getPersonagemDano => this._personagemDono;

  set setPersonagemDano(personagemDano) =>
      this._personagemDono = personagemDano;

  void usar() {
    print("Usando habilidade $_nome");
  }
}
