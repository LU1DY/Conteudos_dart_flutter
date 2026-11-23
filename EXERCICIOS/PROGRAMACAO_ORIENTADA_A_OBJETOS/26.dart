class Pessoa {
  String nome;
  int idade;

  Pessoa(String this.nome, int this.idade);

  void apresentar() {
    print("Olá, meu nome é $nome e eu tenho $idade anos.");
  }
}

void main() {
  Pessoa moblit = Pessoa("Moblit", 19);
  moblit.apresentar();
}
