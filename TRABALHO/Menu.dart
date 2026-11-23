import "dart:io";

class Menu {
  List<Map<String, dynamic>> _produtos = [];
  int _desconto = 0;
  double _precoTotal = 0;

  Menu(this._produtos) {}

  List<Map<String, dynamic>> get getProdutos => this._produtos;

  int get getDesconto => this._desconto;
  double get getPrecoTotal => this._precoTotal;

  void setDesconto(int desconto) {
    this._desconto = desconto;
  }

  void setPrecoTotal(double precoTotal) {
    this._precoTotal = precoTotal;
  }

  void addProduto(Map<String, dynamic> produto) {
    this._produtos.add(produto);
  }

  void removeProduto(Map<String, dynamic> produto) {
    if (this._produtos.contains(produto)) {
      this._produtos.remove(produto);
    } else {
      print("O produto ${produto[0]} não foi cadastrado.");
    }
  }

  void registrarVendas() {
    print("Informe o número de produtos que você deseja comprar.");

    int numeroProdutosCadastrados = int.parse(stdin.readLineSync()!);

    for (int i = 1; i <= numeroProdutosCadastrados; i++) {
      Map<String, dynamic> produto = {};

      print("Informe o nome do produto: ");
      produto["nome"] = stdin.readLineSync()!;

      print("Informe o preço do produto: ");
      produto["preco"] = double.parse(stdin.readLineSync()!);

      addProduto(produto);
    }
    print(this.getProdutos);
  }

  void resumoVenda() {
    print(this.getProdutos);

    if (getProdutos.length == 0) {
      print("Nenhum produto foi cadastrado!");
    } else {
      double total = 0;
      for (int i = 0; i < getProdutos.length; i++) {
        total += getProdutos[i]["preco"];
        print(
          "Você comprou ${getProdutos[i]["nome"]} por ${getProdutos[i]["preco"]} reais.",
        );
      }
      setPrecoTotal(total);
      print("Valor total da compra: $getPrecoTotal reais.");
    }
  }

  void aplicarDesconto() {
    print("Informe o valor do desconto: ");
    setDesconto(int.parse(stdin.readLineSync()!));
    if ((getDesconto / 100) > 0 && (getDesconto / 100) <= 1) {
      setPrecoTotal(getPrecoTotal - getPrecoTotal * (getDesconto / 100));
      print("O valor da sua compra com desconto é: $getPrecoTotal reais.");
    } else {
      print("Desconto inválido!");
    }
  }

  void finalizarCompra() {
    if (getProdutos.length == 0) {
      print("Você não selecionou nenhum produto!");
    } else {
      print("""
        Total da compra: $getPrecoTotal reais,
        Desconto aplicado: $getDesconto%,
        Valor final da compra com desconto: ${getPrecoTotal - (getPrecoTotal * (getDesconto / 100))} reais
        """);

      print("""
        Informe o tipo de pagamento:
        1. PIX
        2. Dinheiro
        3. Cartão de crédito (taxa de 5% para sob o valor da compra)
        """);
      int formaPagamento = int.parse(stdin.readLineSync()!);
      switch (formaPagamento) {
        case 1:
          print("Compra paga com PIX!");
          break;
        case 2:
          print("Compra paga com dinheiro");
          break;
        case 3:
          print("Compra paga com cartão de crédito");
          print(
            "Com a adição de 5% do cartão de crédito, o valor total da compra fica em ${getPrecoTotal + (getPrecoTotal * 0.05)} reais.",
          );
          break;

        case 4:
          print("""Cancelar pagamento?
                1. Sim
                2. Não""");

          int opcao = int.parse(stdin.readLineSync()!);

          if (opcao == 1) {
            print("Pagamento cancelado...");
            break;
          } else if (opcao == 2) {
            print("Pa");
          }
      }
    }
  }

  void cancelarCompra() {
    if (getProdutos.length == 0) {
      print("Você não selecionou nenhum produto!");
    } else {
      print("""
    Deseja cancelar a compra?
    1. Sim
    2. Não
    """);
      int opcao = int.parse(stdin.readLineSync()!);
      if (opcao == 1) {
        getProdutos.clear();
      } else if (opcao == 2) {
        print("Retornando ao menu...");
      }
    }
  }
}
