enum LetterGrade {A, B, C, D, F}

class LetterGradeCalculator{
  LetterGrade getLetterGrade(int numGrade){
    if(isAGrade(numGrade)){
      return LetterGrade.A;
    }
    if(isBGrade(numGrade)){
      return LetterGrade.B;
    }
    if(isCGrade(numGrade)){
      return LetterGrade.C;
    }
    if(isDGrade(numGrade)){
      return LetterGrade.D;
    }
    else{
      return LetterGrade.F;
    }
  }
  bool isAGrade(numGrade){
    if(numGrade >= 90){
      return true;
    }
    else{
      return false;
    }
  }

  bool isBGrade(int numGrade) {
    if(numGrade >= 80 && numGrade <90){
      return true;
    }
    else{
      return false;
    }
  }

  bool isCGrade(int numGrade) {
    if(numGrade >= 70 && numGrade <80){
      return true;
    }
    else{
      return false;
    }
  }
  bool isDGrade(int numGrade) {
    if(numGrade >= 60 && numGrade <70){
      return true;
    }
    else{
      return false;
    }
  }
}