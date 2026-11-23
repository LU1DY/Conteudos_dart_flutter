import 'habilidade.dart';

class Habilidadecura extends Habilidade {
  Habilidadecura({
    required String nome,
    required int custoMana,
    required int cura,
    required String personagemDono,
  }) : super(
         custoMana: custoMana,
         dano: cura,
         nome: nome,
         personagemDono: personagemDono,
       );
}
