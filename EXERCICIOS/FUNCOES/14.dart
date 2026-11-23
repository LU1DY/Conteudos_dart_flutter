void main() {
  void apresentar(String nome, [int? idade]) {
    print("Eu sou $nome, tenho ${idade ?? 0} anos de idade.");
  }

  apresentar("nome");
}
