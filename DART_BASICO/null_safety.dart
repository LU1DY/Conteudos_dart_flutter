void main() {
  // Passando o ? para um tipo de uma variável, esse valor pode ser nulo, para impedirmos que esse valor seja nulo quando precisarmos dele, podemos usar o !
  String? nome;
  nome = "abd";
  nome = null;
  print(nome!);

  // late impede que a variável receba um nulo futuramente
  late int idade;
  idade = 9;
  print(idade);
}
