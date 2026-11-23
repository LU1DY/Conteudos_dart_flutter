
import 'dart:math';

import 'arqueiro.dart';
import 'boss.dart';
import 'guerreiro.dart';
import 'mago.dart';
import 'personagem.dart';

void main() {
  List<Personagem> listaPersonagens = [];

  Guerreiro chico = Guerreiro(
    tamBiceps: 4,
    tribo: "Franciscos",
    vida: 120,
    nome: "Chico",
    poderEspada: 9,
  );

  Mago pedrao = Mago(
    mana: 12,
    forcaPoder: 5,
    custoPoder: 9,
    tribo: "Pedros",
    vida: 145,
    nome: "Pedrão",
    poderEspada: 12,
  );

  Arqueiro tonhao = Arqueiro(
    tribo: "Antônios",
    vida: 8,
    nome: "Tonhão",
    poderEspada: 11,
    qtdFlechas: 89,
    forcaFlecha: 20,
  );

  listaPersonagens.add(chico);
  listaPersonagens.add(tonhao);
  listaPersonagens.add(pedrao);

  Boss boss = Boss(nome: "Maurício", poder: 10, vida: 100);

  Random random = new Random();
  int dado = random.nextInt(17) + 1;

  int numeroAtaque = random.nextInt(listaPersonagens.length);
  var personagemAtaque = listaPersonagens.elementAt(numeroAtaque);

  if (dado < 9) {
    boss.atacar();
  } else {
    print(personagemAtaque);
  }
}
