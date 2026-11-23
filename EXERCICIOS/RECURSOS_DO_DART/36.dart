void main() {
  // Variável é criada na execução do programa
  final DateTime dataHoje = DateTime.now();

  // Variável é criada na compilação do programa
  // const DateTime dataAgora = DateTime.now();

  // Teremos um erro usando const e DataTime.now(), pois a variável const é criada na compilação e o const não permite que alteremos o valor da variável após sua criação

  const List<String> nomes = ["Luidy"];
  // nomes.add("nome");
  final List<int> ids = [1, 2, 3, 4];
  ids.add(5);
  print(ids);

  // Valores e referência na memória imutáveis
  const Map<String, dynamic> usuarios = {"nome": "Luidy", "idade": 22};
  // usuarios["nome"] = "Maurício";
  print(usuarios["nome"]);

  // Referência na memória imutável, mas o valor de um Map é alterável
  final Map<String, dynamic> yegueristas = {"nome": "Eren Yeger", "idade": 19};
  yegueristas["idade"] = 20;
  print(yegueristas);


}
