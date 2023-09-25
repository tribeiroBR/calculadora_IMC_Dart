import 'package:calculadora_imc/classe/pessoa.dart';

String calcularIMC(Pessoa pessoa) {
  double imc = pessoa.peso / (pessoa.altura * pessoa.altura);
  String categoria = "";
  if (imc < 16) {
    categoria = "Magreza grave";
  } else if (imc < 17) {
    categoria = "Magreza moderada";
  } else if (imc < 18.5) {
    categoria = "Magreza leve";
  } else if (imc < 25) {
    categoria = "Saudável";
  } else if (imc < 30) {
    categoria = "Sobrepeso";
  } else if (imc < 35) {
    categoria = "Obesidade Grau 1";
  } else if (imc < 40) {
    categoria = "Obesidade Grau 2 (severa)";
  } else if (imc >= 40) {
    categoria = "Obesidade Grau 3 (mórbida)";
  }
  //o calculo do IMC precisamos converter para string.
  // o comando ASFixes, faz com que ele pegue apenas 2 casas decimais.
  return "Seu IMC é: ${imc.toStringAsFixed(2)}, você está na categoria: $categoria.";
}
