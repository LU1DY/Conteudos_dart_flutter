class Usuario {
  String nome;
  int idade;

  Usuario(this.nome, this.idade);

  factory Usuario.fromMap(Map<String, dynamic> map) {
    return Usuario(map['nome'] as String, map['idade'] as int);
  }

  void exibirInformacoes() {
    print('Usuário: $nome | Idade: $idade anos');
  }
}

void main() {
  var dadosUsuario = {"nome": "João", "idade": 22};

  var usuario = Usuario.fromMap(dadosUsuario);

  usuario.exibirInformacoes();
}
