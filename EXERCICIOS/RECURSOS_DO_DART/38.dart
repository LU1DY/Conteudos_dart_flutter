class Usuario {
  final String _nome;
  final int idade;

  Usuario({required this._nome, required this.idade});

  get nome => this._nome;
}

void main() {
  Usuario u1 = Usuario(nome: "Luidy", idade: 22);

  print("Olá ${u1.nome}, você tem ${u1.idade}.");
}
