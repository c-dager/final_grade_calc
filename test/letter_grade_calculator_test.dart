import 'dart:collection';

import 'package:final_grade_calc/letter_grade_calculator.dart';
import 'package:test/test.dart';

void main() {
  final numToLetterConverter = new LetterGradeCalculator();
  final Map<int, LetterGrade> numberAndMatchingLetterGradeList = {95: LetterGrade.A, 85: LetterGrade.B, 75: LetterGrade.C, 65: LetterGrade.D, 55: LetterGrade.F};

  for(MapEntry numberAndLetterGradeCombo in numberAndMatchingLetterGradeList.entries){
    test("${numberAndLetterGradeCombo.key} is ${numberAndLetterGradeCombo.value}", () {
      LetterGrade result = numToLetterConverter.getLetterGrade(numberAndLetterGradeCombo.key);
      expect(numberAndLetterGradeCombo.value, result);
    });
  }
}
