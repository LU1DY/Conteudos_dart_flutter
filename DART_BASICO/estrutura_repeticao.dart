import 'dart:io';

void main() {
  for (int i = 0; i <= 10; i += 2) {
    print(i);
  }
  print("Informe um valor: ");
  int valor = int.parse(stdin.readLineSync()!);
  while (valor != 0) {
    print("Você informou $valor, informe 0 para sair.");
    valor = int.parse(stdin.readLineSync()!);
  }
}
