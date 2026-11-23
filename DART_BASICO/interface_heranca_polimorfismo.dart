// Classes abstratas, funcionam como contratos, a classe que implementa uma classe abstrata deve conter todos os métodos e atributos da classe abstrata

abstract class Pessoa {
  String comunicar();
}

class Jorge implements Pessoa {
  String comunicar() {
    return "Hello, World!";
  }
}

// Herança
class Fulano {
  String cumprimentar() {
    return "Fala meu amigo, cê tá bão?";
  }
}

class Ciclano extends Fulano {}

void main() {
  Ciclano mauricio = Ciclano();
  print(mauricio.cumprimentar());
}

// Pólimorfismo
// Mesmo método fazendo ações diferentes em classes diferentes
abstract class Animal() {
  String fazerSom();
}

class Cachorro implements Animal {
  String fazerSom() {
    return "AUAUAUAUAUAUAUA!!!!!!!!!!!";
  }
}
class Gato implements Animal {
  String fazerSom() {
    return "MIAUMIAUMIAUMIAU!!!!!!!!!!!";
  }
}
class Vaca implements Animal {
  String fazerSom() {
    return "MUUUUUUUUUUUUUUUUUUU!!!!!!!!!!!";
  }
}
