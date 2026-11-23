import "dart:io";

import 'Menu.dart';

void main() {
  final List<int> operacoes = [1, 2, 3, 4, 5, 6];
  List<Map<String, dynamic>> produtos = [];
  Menu menu = Menu(produtos);
  print("""
  Informe:
  1. Registrar venda
  2. Resumo da venda
  3. Aplicar desconto
  4. Finalizar compra
  5. Cancelar compra
  6. Sair do menu
  """);
  int operacao = int.parse(stdin.readLineSync()!);

  while (operacao != 6 || !operacoes.contains(operacao)) {
    switch (operacao) {
      case 1:
        // Registrar venda
        menu.registrarVendas();

      case 2:
        // Resumo da venda
        menu.resumoVenda();

      case 3:
        // Aplicar desconto
        menu.aplicarDesconto();

      case 4:
        // Finalizar compra
        menu.finalizarCompra();
      case 5:
        // Cancelar compra
        menu.cancelarCompra();

      case 6:
        // Sair
        print("""
        Deseja cancelar a compra?
        1. Sim
        2. Não
        """);

        int opcao = int.parse(stdin.readLineSync()!);

        if (opcao == 1) {
          print("Fechando menu...");
          break;
        } else if (opcao == 2) {
          print("Retornando ao menu...");
        }
        break;

      default:
        // Exceção
        print("""
        Informe um valor válido:
        1. Registrar venda
        2. Resumo da venda
        3. Aplicar desconto
        4. Finalizar compra
        5. Cancelar compra
        6. Sair do menu
        """);
        operacao = int.parse(stdin.readLineSync()!);
    }
  print("""
  Informe:
  1. Registrar venda
  2. Resumo da venda
  3. Aplicar desconto
  4. Finalizar compra
  5. Cancelar compra
  6. Sair do menu
  """);
    operacao = int.parse(stdin.readLineSync()!);
  }
}
