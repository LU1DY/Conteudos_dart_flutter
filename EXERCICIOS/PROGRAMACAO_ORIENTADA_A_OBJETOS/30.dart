class Pessoa {
  String nome;
  int idade;

  Pessoa(String this.nome, int this.idade);
}

class Aluno extends Pessoa {
  String curso;

  Aluno(this.curso, String nome, int idade) : super(nome, idade);
}
