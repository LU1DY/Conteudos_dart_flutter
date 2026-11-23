import 'AULA_02_09.dart';

void main() {
  Pessoa p1 = Pessoa(cpf: '000.000.000-00', idade: 220, nome: 'Chico');
  print("Meu CPF é ${p1.cpf}");
  p1.apresentar();

  JogadorDoGremio JoaoLucas = JogadorDoGremio(
    cpf: "cpf",
    idade: 1,
    nome: "João Lucas",
    numeroDaCamisa: 2,
  );

  JoaoLucas.apresentar();
}
