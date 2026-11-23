import "dart:io";

void main() {
  bool seguirFrente = true;
  if (seguirFrente) {
    print("Vá para a frente");
  } else {
    print("Vá para outra direção");
  }
  print("Informe um valor entre 0 a 2");
  int valor = int.parse(stdin.readLineSync()!);
  switch (valor) {
    case 0:
      print("Operação 0");
    case 1:
      print("Operação 1");
    case 2:
      print("Operação 2");
    default:
      print("Informe uma operação válida!");
  }
}
