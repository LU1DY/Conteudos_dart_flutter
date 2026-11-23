import '../PROGRAMACAO_ORIENTADA_A_OBJETOS/29.dart';

void main() {
  List<Animal> animais = [Cachorro(), Gato(), Cachorro(), Gato()];

  for (int i = 0; i < animais.length; i++) {
    animais[i].emitirSom();
  }
}
