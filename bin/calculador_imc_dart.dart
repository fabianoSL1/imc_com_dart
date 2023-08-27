import 'dart:io';

import 'package:calculador_imc_dart/domain/classificacao.dart';
import 'package:calculador_imc_dart/domain/imc.dart';
import 'package:calculador_imc_dart/domain/pessoa.dart';

void main(List<String> arguments) {
  Pessoa pessoa = Pessoa();
  Imc imc = Imc();
  try {
    print("nome: ");
    pessoa.nome = stdin.readLineSync()!;

    print("altura (ex: 1.73)");
    pessoa.altura = double.parse(stdin.readLineSync()!);

    print("peso (ex: 73.00)");
    pessoa.peso = double.parse(stdin.readLineSync()!);
  } catch (err) {
    print("falha ao capturar dados");
  }

  double resultado = imc.calcular(pessoa);
  String classificacao = textClassificacao(imc.classificar(resultado));

  print("imc: $resultado\nclassificacao: $classificacao");
}

String textClassificacao(Classificacao classificacao) {
  switch (classificacao) {
    case Classificacao.magrezaGrave:
      return "magreza grave";
    case Classificacao.magrezaModerada:
      return "magreza moderada";
    case Classificacao.magrezaLeve:
      return "magreza leve";
    case Classificacao.saudavel:
      return "saudável";
    case Classificacao.sobrepeso:
      return "sobrepeso";
    case Classificacao.obesidadeLeve:
      return "obesidade grau I";
    case Classificacao.obseidadeModerada:
      return "obesidade grau II (severa)";
    case Classificacao.obseidadeGrave:
      return "obesidade grau III (morbida)";
  }
}
