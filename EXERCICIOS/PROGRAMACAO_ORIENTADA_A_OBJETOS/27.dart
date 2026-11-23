class ContaBancaria {
  String titular;
  double _saldo;

  ContaBancaria(String this.titular, double this._saldo);

  String depositar(double valor) {
    this._saldo += valor;
    return "Depósito concluído. Saldo: ${this._saldo}";
  }

  String sacar(double valor) {
    if (this._saldo > valor) {
      this._saldo -= valor;
      return "Saque concluído. Saldo: ${this._saldo}";
    } else {
      return "Saque negado, não há fundos suficientes!";
    }
  }

  String consultarSaldo() {
    return "Saldo atual: ${this._saldo}";
  }
}

void main() {
  ContaBancaria c1 = ContaBancaria("Nifa", 5600);
  print(c1.depositar(400));
  print(c1.consultarSaldo());
  print(c1.sacar(1000));
  print(c1.consultarSaldo());
}
