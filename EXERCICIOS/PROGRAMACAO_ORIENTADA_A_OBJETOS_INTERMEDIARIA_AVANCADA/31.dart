abstract class Forma {
  double calcularArea();
}

class Retangulo implements Forma {
  double base;
  double altura;

  Retangulo(this.base, this.altura);

  @override
  double calcularArea() {
    return base * altura;
  }
}

class Circulo implements Forma {
  double raio;

  Circulo(this.raio);

  @override
  double calcularArea() {
    return 3.14 * (raio * raio);
  }
}

class Quadrado implements Forma {
  double lado;

  Quadrado(this.lado);

  @override
  double calcularArea() {
    return lado * lado;
  }
}
