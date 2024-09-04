import 'dart:collection';

import 'package:final_grade_calc/letter_grade_calculator.dart';
import 'package:test/test.dart';

void main() {
  final numToLetterConverter = new LetterGradeCalculator();
  final Map<int, String> numberAndMatchingLetterGradeList = {95: 'A', 85: 'B', 75: 'C', 65: 'D', 55: 'F'};

  for(MapEntry numberAndLetterGradeCombo in numberAndMatchingLetterGradeList.entries){
    test("${numberAndLetterGradeCombo.key} is letter grade ${numberAndLetterGradeCombo.value}", () {
      String result = numToLetterConverter.getLetterGrade(numberAndLetterGradeCombo.key);
      expect(numberAndLetterGradeCombo.value, result);
    });
  }
}
