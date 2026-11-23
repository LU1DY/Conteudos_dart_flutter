import 'dart:io';

void main() {
  List<int> operacoes = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0];

  print("""
Informe uma operação no menu:
1 - Cadastrar carro
2 - Cadastrar moto
3 - Cadastrar caminhão
4 - Cadastrar cliente
5 - Listar veículos
6 - Listar clientes
7 - Realizar locação
8 - Finalizar locação
9 - Consultar locações
0 – Sair
""");
  int operacao = int.parse(stdin.readLineSync()!);
  while (operacoes.contains(operacao)) {
    switch (operacao) {
      case 1:
        print("Operação Cadastrar carro escolhida.");
      case 2:
        print("Operação Cadastrar moto escolhida.");
      case 3:
        print("Operação Cadastrar caminhão escolhida.");
      case 4:
        print("Operação Cadastrar cliente escolhida.");
      case 5:
        print("Operação Listar veículos escolhida.");
      case 6:
        print("Operação Listar clientes escolhida.");
      case 7:
        print("Operação Realizar locação escolhida.");
      case 8:
        print("Operação Finalizar locação escolhida.");
      case 9:
        print("Operação Consultar locações escolhida.");
      case 0:
        print("Operação sair escolhida.");
        print("Saindo...");
        break;
    }

    if (operacao != 0) {
      print("""
      Informe uma operação no menu:
      1 - Cadastrar carro
      2 - Cadastrar moto
      3 - Cadastrar caminhão
      4 - Cadastrar cliente
      5 - Listar veículos
      6 - Listar clientes
      7 - Realizar locação
      8 - Finalizar locação
      9 - Consultar locações
      0 – Sair
      """);
      int operacao = int.parse(stdin.readLineSync()!);
    } else {
      break;
    }
  }
}
