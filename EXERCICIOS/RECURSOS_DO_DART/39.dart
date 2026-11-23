// Função com parâmetros nomeados.
// Preço é obrigatório, desconto e frete começam com 0 se não forem informados.
double calcularPrecoFinal({
  required double preco,
  double desconto = 0.0,
  double frete = 0.0,
}) {
  return preco - desconto + frete;
}

void main() {
  // 1. Passando apenas o preço (desconto e frete usam o padrão 0)
  double resultado1 = calcularPrecoFinal(preco: 100.0);
  print("Preço final 1: R\$ $resultado1"); // R$ 100.0

  // 2. Passando todos os parâmetros em qualquer ordem
  double resultado2 = calcularPrecoFinal(
    frete: 15.0,
    preco: 200.0,
    desconto: 30.0,
  );
  print("Preço final 2: R\$ $resultado2"); // R$ 185.0
}
