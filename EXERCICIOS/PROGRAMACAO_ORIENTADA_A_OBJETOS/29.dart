class Animal {
  void emitirSom() {
    print("Ruídos");
  }
}

class Cachorro extends Animal {
  @override
  void emitirSom() {
    print("MIAUMIAUMIAUMIAU!!!!!");
  }
}

class Gato extends Animal {
  @override
  void emitirSom() {
    print("AUAUAUAUAUAUAUAU!!!!!");
  }
}

void main() {
  Cachorro bolinha = Cachorro();
  Gato miau = Gato();

  bolinha.emitirSom();
  miau.emitirSom();
}
