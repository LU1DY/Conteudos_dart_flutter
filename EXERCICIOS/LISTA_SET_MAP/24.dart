import 'dart:io';

void main() {
  List<Map> listaDeUsuarios = [
    {"nome": "Luidy", "idade": 99},
    {"nome": "Mauricio", "idade": 22},
    {"nome": "Julio", "idade": 2},
  ];

  print("Informe 0 para parar ou 1 para continuar: ");
  int opcao = int.parse(stdin.readLineSync()!);

  while (opcao != 0) {
    Map<String, dynamic> usuario = {};

    print("Informe o nome do usuario: ");
    usuario["nome"] = stdin.readLineSync()!;

    print("Informe a idade do usuario: ");
    usuario["idade"] = int.parse(stdin.readLineSync()!);

    listaDeUsuarios.add(usuario);

    print(listaDeUsuarios);

    print("Informe 0 para parar ou 1 para continuar: ");
    opcao = int.parse(stdin.readLineSync()!);
  }
  var maioresDeIdade = listaDeUsuarios
      .where((usuario) => usuario["idade"] >= 18)
      .toList();
  print("Maiores de idade: ");
  print(maioresDeIdade);
}
