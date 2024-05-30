 int lengthOfLastWord(String s) {
   List<String> words = s.split(' ').where((word) => word.isNotEmpty).toList();

   String k = words.last;
return(k.length);   

  }
  void main(){
print (lengthOfLastWord("   fly me   to   the moon  "));

  }
