  String findTheDifference(String s, String t) {
    List<String> sList = s.split('').toList();
    for (int i = 0; i < t.length; i++){
      if (!sList.contains(t[i])){
        return t[i];
      }
      sList.remove(t[i]);
    }
    return "false";
  }

  void main(){
    print(findTheDifference("a", "aa"));
  }