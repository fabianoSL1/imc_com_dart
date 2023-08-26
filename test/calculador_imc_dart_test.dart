import 'package:calculador_imc_dart/domain/classificacao.dart';
import 'package:calculador_imc_dart/domain/imc.dart';
import 'package:calculador_imc_dart/domain/pessoa.dart';
import 'package:test/test.dart';

void main() {
  group("imc", () {
    Pessoa pessoa = Pessoa();
    pessoa.peso = 73;
    pessoa.altura = 1.73;

    Imc imc = Imc();

    test('calcular', () {
      expect(imc.calcular(pessoa), 24.39);
    });

    test('classificar', () {
      expect(imc.classificar(imc.calcular(pessoa)),
          equals(Classificacao.saudavel));
    });
  });
}
