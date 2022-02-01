class SumDivisiblesUntilTarget {
  final _firstTargetOfDivision = 5;
  final _secondTargetOfDivision = 3;

  sumDivisiblesUntilTarget(String? input) {
    int _total = 0;

    if (_isNumericAndValid(input)) {
      for (int currentValue = _secondTargetOfDivision;
          currentValue < int.parse(input!.trim());
          currentValue++) {
        if (_isDivisible(currentValue)) {
          _total += currentValue;
        }
      }

      return _total;
    } else {
      return null;
    }
  }

  //Inicialmente esta função foi implementada utilizando a lei da divisibilidade,
  //entretanto a execução do programa levou em média 1 minuto a mais. Creio que
  //esse custo não faça sentido no Dart, já que ele trata int como 'equivalente'
  //do que seria o long em outras linguagens. Além do mais, o maior número não
  //será a entrada, mas a saída da aplicação.
  bool _isDivisible(int currentValue) {
    if (currentValue % _firstTargetOfDivision == 0) {
      return true;
    } else {
      if (currentValue % _secondTargetOfDivision == 0) {
        return true;
      }

      return false;
    }
  }

  //Os números considerados válidos são inteiros positivos.
  bool _isNumericAndValid(String? input) {
    try {
      int inputAsInteger = int.parse(input!);

      if (inputAsInteger.isNaN || inputAsInteger.isNegative) {
        return false;
      }

      return true;
    } catch (e) {
      return false;
    }
  }
}
