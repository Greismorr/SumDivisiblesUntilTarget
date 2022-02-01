import 'dart:convert';
import 'dart:io';
import 'lib/model/sum_divisibles_until_target.dart';

void main() {
  final SumDivisiblesUntilTarget sumDivisiblesUntilObject =
      SumDivisiblesUntilTarget();
  final String askForInput = "Digite um número inteiro positivo:";
  final String error =
      "Número inválido! Tenha em mente que sua entrada precisa ser um inteiro positivo";

  print(askForInput);

  var sumOfDivisibles = sumDivisiblesUntilObject
      .sumDivisiblesUntilTarget(stdin.readLineSync(encoding: utf8));

  sumOfDivisibles == null ? print(error) : print(sumOfDivisibles);
}
