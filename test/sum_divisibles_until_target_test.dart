import 'dart:convert';
import 'dart:io';
import 'package:sum_divisibles_until_target/model/sum_divisibles_until_target.dart';
import 'package:test/test.dart';

void main() {
  final String testInputs =
      File('test/test_resources/test_inputs.json').readAsStringSync();
  final SumDivisiblesUntilTarget sumObject = SumDivisiblesUntilTarget();

  test(
    'Test Sum Divisibles Until Target',
    () {
      final List<dynamic> testInputsJson = jsonDecode(testInputs);
      final String input = 'input';
      final String response = 'value';

      testInputsJson.forEach((testResource) {
        var result = sumObject.sumDivisiblesUntilTarget(testResource[input]);

        expect(result, testResource[response]);
      });
    },
  );
}
