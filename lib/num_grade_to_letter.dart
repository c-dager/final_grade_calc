class numToLetterGrade{
  String getLetterGrade(int numGrade){
    if(isAGrade(numGrade)){
      return "A";
    }
    if(isBGrade(numGrade)){
      return "B";
    }
    if(isCGrade(numGrade)){
      return "C";
    }
    if(isDGrade(numGrade)){
      return "D";
    }
    else{
      return "F";
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