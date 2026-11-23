void main() {
  String nome = "Luidy";
  int idade = 22;
  bool saudavel = false;
  print("Lista de Strings original");
  List<String> nomes = ["Luidy", "Michael", "da", "Silva"];
  print("$nomes \n");

  print("Pedro adicionado ao fim da lista");
  nomes.add("Pedro");
  print("$nomes \n");

  print("Pedro removido da lista");
  nomes.remove("Pedro");
  print("$nomes \n");

  print("Michel adicionado ao fim da lista");
  nomes.insert(nomes.length - 1, "Michel");
  print("$nomes \n");

  print("Michel removido da lista");
  nomes.removeAt(nomes.length - 1);
  print("$nomes \n");
}
