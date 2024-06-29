  bool isAnagram(String s, String t) {
    List<String> tt = t.split('');
    if (s.length != t.length){
      return false;
    }
    for (int i = 0; i < s.length; i++){
      if (!tt.contains(s[i])){
        return false;
      } 
      else {
        tt.remove(s[i]);
      }
   }
return true;
  }
  void main(){
    print(isAnagram("aacc", "ccac"));
  }