import 'package:final_grade_calc/num_grade_to_letter.dart';
import 'package:test/test.dart';

void main() {
  final numToLetterConverter = new numToLetterGrade();
  test("95 is letter grade A", () {
    String result = numToLetterConverter.getLetterGrade(95);
    expect("A", result);
  });
}
