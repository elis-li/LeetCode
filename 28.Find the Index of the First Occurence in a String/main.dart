  int strStr(String haystack, String needle) {
    if (!haystack.contains(needle)){
      return (-1);
    }
    return haystack.indexOf(needle);
  }

  void main (){
    print (strStr("sadbutsad", "sad"));
  }