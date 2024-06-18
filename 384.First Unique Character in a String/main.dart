  int firstUniqChar(String s) {
    Set<String> sOriginal = {};
    List<String> sDuplicates = [];
    for (int i = 0; i < s.length; i++){
      if (!sOriginal.contains(s[i])){
      sOriginal.add(s[i]);
      } else {
      sDuplicates.add(s[i]);
      }
    }
    for (int i = 0; i < s.length; i++){
      if (!sDuplicates.contains(s[i])){
        return s.indexOf(s[i]);
      }
    }
    return -1;
  }

  void main(){
    print(firstUniqChar('aabb'));
  }