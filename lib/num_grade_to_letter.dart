class numToLetterGrade{
  String getLetterGrade(int numGrade){
    if(checkIfAGrade(numGrade)){
      return "A";
    }
    else{
      return "";
    }
  }
  bool checkIfAGrade(numGrade){
    if(numGrade >= 90){
      return true;
    }
    else{
      return false;
    }
  }
}