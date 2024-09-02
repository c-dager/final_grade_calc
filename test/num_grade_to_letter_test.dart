import 'package:final_grade_calc/num_grade_to_letter.dart';
import 'package:test/test.dart';

void main() {
  final numToLetterConverter = new numToLetterGrade();
  test("95 is letter grade A", () {
    String result = numToLetterConverter.getLetterGrade(95);
    expect("A", result);
  });
  test("85 is letter grade B", () {
    String result = numToLetterConverter.getLetterGrade(85);
    expect("B", result);
  });
  test("75 is letter grade C", () {
    String result = numToLetterConverter.getLetterGrade(75);
    expect("C", result);
  });
  test("65 is letter grade D", () {
    String result = numToLetterConverter.getLetterGrade(65);
    expect("D", result);
  });
}
