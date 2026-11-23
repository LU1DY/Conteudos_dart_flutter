import 'dart:io';
import 'dart:math';

import 'Arqueiro.dart';
import 'Boss.dart';
import 'Guerreiro.dart';
import 'Mago.dart';
import 'Personagem.dart';
import 'habilidade.dart';
import 'habilidadeAtaque.dart';
import 'habilidadeCura.dart';

void main() {
  List<Personagem> listaPersonagens = [];

  // Lista de habilidades mago
  Habilidadeataque ataqueEspada = Habilidadeataque(
    nome: "Ataque com espada",
    custoMana: 10,
    dano: 2,
    personagemDono: "Mago",
  );
  Habilidadeataque bolaFogo = Habilidadeataque(
    nome: "Bola de fogo",
    custoMana: 30,
    dano: 15,
    personagemDono: "Mago",
  );
  Habilidadecura curaMago = Habilidadecura(
    nome: "Poção cura",
    custoMana: 20,
    cura: 20,
    personagemDono: "Mago",
  );

  // Lista de habilidades Arqueiro
  Habilidadeataque ataquePunhal = Habilidadeataque(
    nome: "Ataque com punhal",
    custoMana: 10,
    dano: 2,
    personagemDono: "Arqueiro",
  );
  Habilidadeataque ataqueArco = Habilidadeataque(
    nome: "Ataque com arco e flecha",
    custoMana: 5,
    dano: 8,
    personagemDono: "Arqueiro",
  );
  Habilidadecura curaArqueiro = Habilidadecura(
    nome: "Poção cura",
    custoMana: 20,
    cura: 20,
    personagemDono: "Arqueiro",
  );

  // Lista de habilidades guerreiro
  Habilidadeataque ataqueLanca = Habilidadeataque(
    nome: "Ataque com lança",
    custoMana: 10,
    dano: 5,
    personagemDono: "Guerreiro",
  );
  Habilidadeataque ataqueFaca = Habilidadeataque(
    nome: "Ataque com faca",
    custoMana: 30,
    dano: 2,
    personagemDono: "Guerreiro",
  );
  Habilidadecura curaGuerreiro = Habilidadecura(
    nome: "Poção cura",
    custoMana: 25,
    cura: 15,
    personagemDono: "Guerreiro",
  );

  List<Habilidade> listaHabilidadesMago = [
    ataqueLanca,
    ataqueFaca,
    curaGuerreiro,
  ];
  List<Habilidade> listaHabilidadesGuerreiro = [
    ataquePunhal,
    ataqueArco,
    curaArqueiro,
  ];
  List<Habilidade> listaHabilidadesArqueiro = [
    ataquePunhal,
    ataqueArco,
    curaArqueiro,
  ];

  // Personagens
  listaPersonagens.add(
    Guerreiro(
      nome: "Matheus",
      tribo: "Boladão",
      vida: 10,
      forca: 5,
      pocaoCura: 2,
      listaHabilidades: listaHabilidadesGuerreiro,
    ),
  );
  listaPersonagens.add(
    Mago(
      nome: "Ezequiel",
      tribo: "Paraíso",
      vida: 20,
      mana: 20,
      forcaAtaque: 5,
      forcaPoder: 2,
      custoPoder: 5,
      pocaoCura: 4,
      listaHabilidades: listaHabilidadesMago,
    ),
  );
  listaPersonagens.add(
    Arqueiro(
      nome: "Gustavo",
      tribo: "GreenArrow",
      vida: 10,
      forcaFlecha: 10,
      qtdFlechas: 10,
      forcaPoder: 2,
      pocaoCura: 3,
      listaHabilidades: listaHabilidadesArqueiro,
    ),
  );
  Arqueiro chico = Arqueiro(
    nome: "Gustavo",
    tribo: "GreenArrow",
    vida: 10,
    forcaFlecha: 10,
    qtdFlechas: 10,
    forcaPoder: 2,
    pocaoCura: 3,
    listaHabilidades: listaHabilidadesArqueiro,
  );

  for (Habilidade habilidade in chico.listaHabilidades) {
    print(habilidade.nome);
  }

  for (Personagem personagem in listaPersonagens) {
    personagem.imprimir();
  }

  chico.usar();

  Boss hugo_boss = Boss(nome: "Hugo Boss", poder: 20, vida: 100);

  final dado = Random();
  int numeroRodado = dado.nextInt(17) + 1;
  print("Número rodado $numeroRodado");

  if (numeroRodado <= 9) {
    hugo_boss.atacar();
  } else {
    numeroRodado = dado.nextInt(listaPersonagens.length);
    var personagemAtaque = listaPersonagens.elementAt(numeroRodado);
    personagemAtaque.atacar(personagemAtaque.forcaPoder);
  }
}
