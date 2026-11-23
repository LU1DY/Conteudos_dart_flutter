void main() {
  // Usando o operador late dizemos que o valor nunca será null, mas o inicializaremos mais tarde.
  late String nome;
  // print(nome);
  nome = "Luidy";

  // Isso funciona, pois variáveis criadas com var não passam pela validação do null safety do dart, mas se tentarmos usar essa variável com null em operações futuras com outros tipos teremos erros
  var altura;
  // ou
  var peso = null;
  print(altura);

  // Teremos
  String nomaj;

  // Usando o operador nullable type suffix, podemos atribuir um valor null a uma variável
  int? idade;
  print(idade);
  idade = null;
  print(idade);
  idade = 10;
  print(idade);
}
