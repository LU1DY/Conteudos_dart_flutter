abstract class Imprimivel {
  void imprimir();
}

class Papel implements Imprimivel {
  @override
  imprimir() {
    print("Imprimindo o papel");
  }
}
class Platico implements Imprimivel {
  @override
  imprimir() {
    print("Imprimindo o plástico");
  }
}


