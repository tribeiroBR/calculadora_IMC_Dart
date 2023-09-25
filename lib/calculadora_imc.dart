import 'dart:io';
import 'package:calculadora_imc/utils/calc_imc.dart';
import 'package:calculadora_imc/classe/pessoa.dart';
import 'package:calculadora_imc/utils/entrada_dados.dart';

void execute() {
  var pessoa = Pessoa();

  print("Calcule seu IMC!");
  print("Digite seu nome: ");
  pessoa.nome = stdin.readLineSync()!;

  /************************************************************************
     * Para receber a altura e peso é preciso converter a entrada do usuário.
     * Criamos uma nova variável para receber o que está imputado. 
     * Deposi atribuíbos a classe pessoa os valores. 
     Veja à seguir: 
    ************************************************************************/

  print("Digite sua altura em metros e com ponto decimal (ex: 1.80 ): ");
  pessoa.altura = validaDouble()!;

  print("Digite seu peso: ");
  pessoa.peso = validaDouble()!;

  print(
      "Nome : ${pessoa.nome}, Altura: ${pessoa.altura}, Peso: ${pessoa.peso}");

  // Calcula o IMC usando a instância de Pessoa configurada e imprime o resultado
  String mensagemIMC = calcularIMC(pessoa);
  print(mensagemIMC);
}
