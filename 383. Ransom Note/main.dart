  bool canConstruct(String ransomNote, String magazine) {
    List<String> magazineList = magazine.split('');
    for (int i = 0; i < ransomNote.length; i++){
      if (magazineList.contains(ransomNote[i])){
        magazineList.remove(ransomNote[i]);
      }
      else return false;
    } 
  return true;
  }

  void main(){
    print(canConstruct('aa', 'ab'));
  }