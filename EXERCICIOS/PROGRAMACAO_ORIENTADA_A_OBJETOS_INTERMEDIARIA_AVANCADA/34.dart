enum StatusPedido { pendente, processando, enviado, entregue, cancelado }

class Pedido {
  int id;
  String nome;
  StatusPedido status;

  Pedido(this.id, this.nome, this.status);
}

void main() {
  Pedido p1 = Pedido(1, "Pedido de Ana", StatusPedido.entregue);
}
