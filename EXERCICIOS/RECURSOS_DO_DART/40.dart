mixin Nadador {
  void Nadar() {
    print("Nadando...");
  }
}

mixin Andador {
  void Andar() {
    print("Andar...");
  }
}

mixin Voador {
  void Voar() {
    print("Voar...");
  }
}

class Mamifero {}

class Peixe {}

class Ave {}

class Golfinho extends Mamifero with Nadador {}

class Tubarao extends Peixe with Nadador {}

class PatoMergulhao extends Ave with Andador, Nadador, Voador {}
