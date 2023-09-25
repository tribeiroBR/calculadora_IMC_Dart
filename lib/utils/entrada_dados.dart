import 'dart:io';

double? validaDouble() {
  double? valor;
  bool valido = false;

  while (!valido) {
    String entrada = stdin.readLineSync()!;

    if (entrada.contains('.')) {
      try {
        valor = double.parse(entrada);
        valido = true;
      } catch (e) {
        print("Você digitou um valor inválido: $entrada.");
        print("Digite um valor com ponto decimal (ex: 7.0 ): ");
      }
    } else {
      print("Você digitou um valor inválido: $entrada.");
      print("Digite um valor com ponto decimal (ex: 7.80 ): ");
    }
  }

  return valor;
}
