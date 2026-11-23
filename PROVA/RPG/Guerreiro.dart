import 'Personagem.dart';
import 'habilidade.dart';

class Guerreiro extends Personagem {
  Guerreiro({
    required nome,
    required tribo,
    required vida,
    required forca,
    required pocaoCura,
    required List listaHabilidades,
  })
    //Personagem personagem = Personagem(nome: "Nome", tribo:"Tribo", vida: 100);
    : super(
         nome: nome,
         tribo: tribo,
         vida: vida,
         forcaPoder: forca,
         pocaoCura: pocaoCura,
         listaHabilidades: listaHabilidades,
       );

  @override
  void consumirRecurso(int custo) {
    print(listaHabilidades);
  }
}
