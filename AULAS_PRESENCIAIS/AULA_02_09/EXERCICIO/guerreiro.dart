import 'personagem.dart';

class Guerreiro extends Personagem {
  int _tamBiceps;

  Guerreiro({
    required this._tamBiceps,
    required String tribo,
    required int vida,
    required String nome,
    required int poderEspada,
  }) : super(nome: nome, tribo: tribo, vida: vida, poderEspada: poderEspada);

  get getTamBiceps => this._tamBiceps;

  set setTamBiceps(tamBiceps) => this._tamBiceps = tamBiceps;

  
}
