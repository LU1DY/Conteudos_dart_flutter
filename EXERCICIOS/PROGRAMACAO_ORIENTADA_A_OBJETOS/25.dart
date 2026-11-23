class Pessoa {
  String nome = "Moblit";
  int idade = 19;


  void apresentar() {
    print("Olá, meu nome é $nome e eu tenho $idade anos.");
  }
}

void main() {
  Pessoa moblit = Pessoa();
  moblit.apresentar();
}
