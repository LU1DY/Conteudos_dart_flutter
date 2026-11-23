import 'habilidade.dart';

class Habilidadeataque extends Habilidade {
  Habilidadeataque({
    required String nome,
    required int custoMana,
    required int dano,
    required String personagemDono,
  }) : super(
         custoMana: custoMana,
         dano: dano,
         nome: nome,
         personagemDono: personagemDono,
       );
}
