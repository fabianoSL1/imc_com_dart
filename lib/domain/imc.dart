import 'package:calculador_imc_dart/domain/classificacao.dart';
import 'package:calculador_imc_dart/domain/pessoa.dart';

class Imc {
  calcular(Pessoa pessoa) {
    double imc = pessoa.peso / (pessoa.altura * pessoa.altura);
    return double.parse(imc.toStringAsFixed(2));
  }

  classificar(double imc) {
    switch (imc) {
      case < 16:
        return Classificacao.magrezaGrave;
      case >= 16 && < 17:
        return Classificacao.magrezaModerada;
      case >= 17 && < 18.5:
        return Classificacao.magrezaLeve;
      case >= 18.5 && < 25:
        return Classificacao.saudavel;
      case >= 25 && < 30:
        return Classificacao.sobrepeso;
      case >= 30 && < 35:
        return Classificacao.obesidadeLeve;
      case >= 35 && < 40:
        return Classificacao.obseidadeModerada;
      default:
        return Classificacao.obseidadeGrave;
    }
  }
}
