import 'Personagem.dart';
import 'habilidade.dart';

class Arqueiro extends Personagem {
  int _qtdFlechas = 0;
  int _forcaFlecha = 0;

  get qtdFlechas => this._qtdFlechas;

  set qtdFlechas(int value) => this._qtdFlechas = value;

  get forcaFlecha => this._forcaFlecha;

  set forcaFlecha(value) => this._forcaFlecha = value;

  Arqueiro({
    required nome,
    required tribo,
    required vida,
    required this._forcaFlecha,
    required this._qtdFlechas,
    required forcaPoder,
    required pocaoCura,
    required listaHabilidades,
  })
    //Personagem personagem = Personagem(nome: "Nome", tribo:"Tribo", vida: 100);
    : super(
         nome: nome,
         tribo: tribo,
         vida: vida,
         forcaPoder: forcaPoder,
         pocaoCura: pocaoCura,
         listaHabilidades: listaHabilidades,
       );

  @override
  void atacar(int poder) {
    if (_qtdFlechas == 0) {
      super.atacar(poder);
    } else {
      print("O Arqueiro atacou com flecha");
      _qtdFlechas -= 1;
    }
  }

  @override
  void consumirRecurso(int custo) {
    if (custo < qtdFlechas) {
      qtdFlechas -= custo;
    } else {
      qtdFlechas = 0;
      print(
        "Quantidade de flechas insuficiente! Você esgotou suas flechas nesse ataque.",
      );
    }
  }

  List<String> extrairNomes(List<Habilidade> listaHabilidades) {
    List<String> nomes = [];

    for (Habilidade habilidade in listaHabilidades) {
      nomes.add(habilidade.nome);
    }

    return nomes;
  }

  @override
  void usar(String habilidade, List<Habilidade> listaHabilidades) {
    if (extrairNomes(listaHabilidades).contains(habilidade)) {
      if (habilidade == "Ataque com arco e flecha") {
        consumirRecurso(listaHabilidades["habilidade"].custoMana);
      }
    }
  }

  @override
  void curar() {}
}
